//
// Created by dcat on 8/25/17.
//


#include "kmalloc.h"
#include <catmfs.h>
#include <str.h>
#include <vfs.h>
#include <catrfmt.h>
#include <errno.h>
#include <stat.h>


inline void catmfs_set_errno(catmfs_special_t *fsp, int8_t errno) {
    fsp->errno = errno;
}

catmfs_inode_t *catmfs_alloc_inode() {
    catmfs_inode_t *inode = (catmfs_inode_t *) kmalloc_paging(0x1000, NULL);
    if (inode == 0) deprintf("Out of memory!");
    memset(inode, 0, 0x1000);
    inode->magic = CATMFS_MAGIC;
    return inode;
}

inline int catmfs_init_inode(catmfs_inode_t *inode) {
    ASSERT(inode);
    inode->magic = CATMFS_MAGIC;
    return 0;
}

int catmfs_do_make(catmfs_special_t *fsp, catmfs_inode_t *pinode, const char *name, catmfs_inode_t *new_inode) {
    uint8_t *raw = (uint8_t *) ((uint32_t) pinode + sizeof(catmfs_inode_t));
    while (true) {
        catmfs_dir_t *dir = (catmfs_dir_t *) raw;
        if (dir->inode == 0) {
            dprintf("offset:%x name:%s", dir, name);
            uint8_t len = strlen(name);
            dir->name_len = len;
            dir->type = new_inode->type;
            dir->inode = new_inode;
            dir->len = 8 + dir->name_len;
            dir->len += 4 - (dir->len % 4);//4 align
            char *np = (char *) ((uint32_t) dir + 9);
            memcpy(np, name, len);
            pinode->reserved++;
            if (new_inode->type == FS_DIRECTORY && !(name[0] == '.' && name[1] == 0) &&
                !(len == 2 && strstr(name, "..") == 0)) {
                CHK(catmfs_make(fsp, new_inode, FS_DIRECTORY, ".", new_inode), "");
                CHK(catmfs_make(fsp, new_inode, FS_DIRECTORY, "..", pinode), "");
            }
            return 0;
        }
        raw = (uint8_t *) ((uint32_t) raw + dir->len);
        if ((uint32_t) raw - (uint32_t) pinode > 0x1000) {
            deprintf("Out of space.last:[%x]", raw);
            return 1;
        }
    }
    _err:
    deprintf("make failed.unexpected exception..");
    return -1;
}

int catmfs_make_overlay_file(catmfs_special_t *fsp, catmfs_inode_t *inode,
                             const char *name, file_operations_t *fop, void *extern_data) {
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    catmfs_inode_t *ninode = kmalloc(sizeof(catmfs_inode_t));
    CHK(catmfs_init_inode(ninode), "");
    ninode->type = FS_FILE;
    ninode->stype = CATMFS_STYPE_OVERLAY;
    ninode->size = 0;
    ninode->reserved = (uint32_t) fop;
    ninode->reserved2 = (uint32_t) extern_data;
    ninode->finode = inode;
    ninode->permission = 0777;
    CHK(catmfs_do_make(fsp, inode, name, ninode), "");
    return 0;
    _err:
    if (ninode)
        kfree(ninode);
    return -1;
}


int catmfs_make_rfmt_file(catmfs_special_t *fsp, catmfs_inode_t *inode,
                          const char *name, fs_node_t *rfmt_node) {
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    catmfs_inode_t *ninode = kmalloc(sizeof(catmfs_inode_t));
    CHK(catmfs_init_inode(ninode), "");
    ninode->type = FS_FILE;
    ninode->stype = CATMFS_STYPE_RFMT;
    ninode->size = rfmt_node->size;
    ninode->reserved = (uint32_t) rfmt_node;
    ninode->finode = inode;
    ninode->permission = 0755;
    CHK(catmfs_do_make(fsp, inode, name, ninode), "");
    return 0;
    _err:
    if (ninode)
        kfree(ninode);
    return -1;
}


int catmfs_make(catmfs_special_t *fsp, catmfs_inode_t *inode, uint8_t type, const char *name, uint32_t reserved2) {
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    catmfs_inode_t *ninode;
    if (type == FS_DIRECTORY && reserved2 != 0) {
        ninode = (catmfs_inode_t *) reserved2;
        ninode->stype = CATMFS_STYPE_ORIG;
    } else {
        ninode = catmfs_alloc_inode();
        ninode->type = type;
        ninode->size = type == FS_DIRECTORY ? 1024 : 0;
        ninode->permission = 00777;
        ninode->reserved = 0;
        ninode->finode = inode;
        if (type == FS_FILE && reserved2 != 0) {
            dprintf("make a rfmt file....");
            ninode->stype = CATMFS_STYPE_RFMT;
            ninode->reserved = reserved2;
        } else {
            ninode->stype = CATMFS_STYPE_ORIG;
        }
    }
    CHK(catmfs_do_make(fsp, inode, name, ninode), "");
    return 0;
    _err:
    deprintf("make failed.unexpected exception..");
    return 1;
}

int catmfs_fs_node_make(fs_node_t *node, __fs_special_t *fsp_, uint8_t type, const char *name) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    return catmfs_make(fsp, inode, type, name, NULL);
}

int32_t catmfs_fs_node_readdir(fs_node_t *node, __fs_special_t *fsp_, uint32_t count, struct dirent *result) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return -1;
    }
    //dprintf("[catmfs_fs_node_readdir]target:%x count:%x\n", inode, count);
    uint32_t raw_st = (uint32_t) inode + sizeof(catmfs_inode_t);
    uint8_t *raw = (uint8_t *) (raw_st + node->offset);
    int x = 0;
    for (; x < count; x++) {
        if ((uint32_t) raw - (uint32_t) inode > 0x1000)
            break;
        catmfs_dir_t *dir = (catmfs_dir_t *) raw;
        if (dir->inode == 0) {
            break;
        }
        if (dir->name_len > 255 || dir->len < 9) {
            deprintf("Bad item! namelen:%x len:%x", dir->name_len, dir->len);
            return -1;
        }
        char *np = (char *) ((uint32_t) dir + 9);
        memcpy(result[x].name, np, dir->name_len);
        result[x].name[dir->name_len] = '\0';
        dprintf("offset:%x len:%x fn:%s", dir, dir->len, result[x].name);
        result[x].type = dir->type;
        result[x].name_len = dir->name_len;
        result[x].node = dir->inode;
        raw = (uint8_t *) ((uint32_t) raw + dir->len);
        node->offset = ((uint32_t) raw) - raw_st;
    }
    return x;
}

int catmfs_fs_node_finddir(fs_node_t *node, __fs_special_t *fsp_, const char *name, fs_node_t *result_out) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    //putf_const("[catmfs_fs_node_finddir]target:%x\n", inode);
    uint8_t *raw = (uint8_t *) ((uint32_t) inode + sizeof(catmfs_inode_t));
    for (int x = 0;; x++) {
        char sname[256];
        catmfs_dir_t *dir = (catmfs_dir_t *) raw;
        if (dir->inode == 0) {
            x--;
            break;
        }
        if (dir->name_len > 255 || dir->len < 9) {
            deprintf("Bad item! namelen:%x len:%x", dir->name_len, dir->len);
            return -1;
        }
        char *np = (char *) ((uint32_t) dir + 9);
        memcpy(sname, np, dir->name_len);
        sname[dir->name_len] = 0;
        //dprintf("sname:%s name:%s", sname, name);
        if (str_compare(sname, name)) {
            catmfs_get_fs_node(dir->inode, result_out);
            return 0;
        }
        raw = (uint8_t *) ((uint32_t) raw + dir->len);
        if ((uint32_t) raw - (uint32_t) inode > fsp->page_size)
            break;
    }
    //not found
    return 1;
}

inline uint32_t catmfs_type_to_mode(uint8_t type, uint16_t permission) {
    uint32_t mode = (uint32_t) (permission & 0xFFF);
    switch (type) {
        case FS_FILE:
            mode |= S_IFREG;
            break;
        case FS_DIRECTORY:
            mode |= S_IFDIR;
            break;
        case FS_SYMLINK:
            mode |= S_IFLNK;
            break;
        default:
            deprintf("unknown type:%x", type);
    }
    return mode;
}

int catmfs_get_fs_node(uint32_t inode_id, fs_node_t *node) {
    catmfs_inode_t *inode = (catmfs_inode_t *) inode_id;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return -1;
    }
    node->offset = 0;
    node->inode = inode_id;
    node->uid = inode->uid;
    node->gid = inode->gid;
    node->size = inode->size;
    node->type = inode->type;
    node->mode = catmfs_type_to_mode(inode->type, inode->permission);
    return 0;
}

int32_t catmfs_fs_node_read(fs_node_t *node, __fs_special_t *fsp_, uint32_t size, uint8_t *buff) {
    uint32_t offset = node->offset;
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    dprintf("read %x{%x}", node->inode, inode->stype);
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_RFMT:
            dprintf("a catrfmt file,redirect it.");
            uint32_t ret = catrfmt_read((fs_node_t *) inode->reserved, offset, size, buff);
            if (ret > 0) node->offset += ret;
            return ret;
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->read == NULL)return -1;
            return oper->read(node, (void *) inode->reserved2, size, buff);
        }
    }
    uint8_t *raw = (uint8_t *) ((uint32_t) inode + sizeof(catmfs_inode_t));
    uint32_t off = 0, les = size, blkno = 0;
    uint32_t fblksize = fsp->page_size - sizeof(catmfs_inode_t);
    uint32_t pblksize = fsp->page_size - sizeof(catmfs_blk_t);
    if (offset < fblksize) {
        memcpy(&buff[off], &raw[offset], MIN(fblksize - offset, les));
        off += MIN(fblksize - offset, les);
        les -= off;
        offset = 0;
    } else offset -= fblksize;
    if (inode->singly_block == 0)
        goto _ret;
    uint32_t *blk_ptrs = (uint32_t *) inode->singly_block;
    if (offset > 0) {
        blkno = (uint8_t) (offset / pblksize);
        offset = offset % pblksize;
    }
    while (les > 0 && blkno < fsp->max_singly_blks) {
        catmfs_blk_t *dblk = (catmfs_blk_t *) blk_ptrs[blkno];
        if (dblk == 0)goto _ret;
        if (dblk->magic != CATMFS_BLK) {
            deprintf("bad catmfs block:%x", dblk);
            goto _ret;
        }
        uint8_t *braw;
        if (offset > 0) {
            braw = (uint8_t *) ((uint32_t) dblk + sizeof(catmfs_blk_t) + offset);
        } else {
            braw = (uint8_t *) ((uint32_t) dblk + sizeof(catmfs_blk_t));
        }
        uint32_t s = MIN(pblksize, les);
        memcpy(&buff[off], braw, s);
        off += s;
        les -= s;
        blkno++;
    }
    _ret:
    node->offset += size - les;
    return size - les;
}

int32_t catmfs_fs_node_write(fs_node_t *node, __fs_special_t *fsp_, uint32_t size, uint8_t *buff) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    uint32_t offset = node->offset;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_RFMT:
            dprintf("a catrfmt file,redirect it.");
            uint32_t ret = catrfmt_write((fs_node_t *) inode->reserved, offset, size, buff);
            if (ret > 0) node->offset += ret;
            return ret;
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->write == NULL)return -1;
            return oper->write(node, (void *) inode->reserved2, size, buff);
        }
    }
    uint8_t *raw = (uint8_t *) ((uint32_t) inode + sizeof(catmfs_inode_t));
    uint32_t off = 0, les = size, blkno = 0;
    uint32_t fblksize = fsp->page_size - sizeof(catmfs_inode_t);
    uint32_t pblksize = fsp->page_size - sizeof(catmfs_blk_t);
    dprintf("fblksize:%x pblksize:%x", fblksize, pblksize);
    dprintf("inode:%x begin:%x", inode, raw);
    if (offset < fblksize) {
        uint32_t s = MIN(fblksize - offset, les);
        dprintf("write %x-%x to fblk[%x]", off, off + s, &raw[offset]);
        memcpy(&raw[offset], &buff[off], s);
        off += s;
        les -= s;
        offset = 0;
    } else offset -= fblksize;
    if (inode->singly_block == 0 && les > 0) {
        inode->singly_block = kmalloc_paging(fsp->page_size, NULL);
        dprintf("[%x]allocated new sblk:%x", inode, inode->singly_block);
    }
    uint32_t *blk_ptrs = (uint32_t *) inode->singly_block;
    if (offset > 0) {
        blkno = (uint8_t) (offset / pblksize);
        offset = offset % pblksize;
    }
    while (les > 0 && blkno < fsp->max_singly_blks) {
        catmfs_blk_t *dblk = (catmfs_blk_t *) blk_ptrs[blkno];
        if (dblk == 0) {
            blk_ptrs[blkno] = (uint32_t) kmalloc_paging(fsp->page_size, NULL);
            dblk = (catmfs_blk_t *) blk_ptrs[blkno];
            dprintf("[%x]allocated new datablk for %x:%x", inode, blkno, dblk);
            dblk->magic = CATMFS_BLK;
        } else if (dblk->magic != CATMFS_BLK) {
            deprintf("bad catmfs block:%x", dblk);
            goto _ret;
        }
        uint8_t *braw;
        if (offset > 0) {
            braw = (uint8_t *) ((uint32_t) dblk + sizeof(catmfs_blk_t) + offset);
        } else {
            braw = (uint8_t *) ((uint32_t) dblk + sizeof(catmfs_blk_t));
        }
        uint32_t s = MIN(pblksize, les);
        dprintf("write %x-%x to pblk[no:%x][%x]", off, off + s, blkno, braw);
        memcpy(braw, &buff[off], s);
        off += s;
        les -= s;
        blkno++;
    }
    _ret:
    node->offset += size - les;
    return size - les;

}

int catmfs_fs_node_rm(fs_node_t *node, __fs_special_t *fsp_) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    if (inode->type == FS_DIRECTORY && inode->reserved != 2) {
        deprintf("cannot remove a not empty dir:%x child_c:%x", inode, inode->reserved);
        catmfs_set_errno(fsp, CATMFS_ERR_NO_EMPTY_DIR);
        return 1;
    }
    if (inode->finode) {
        uint8_t *raw = (uint8_t *) ((uint32_t) inode->finode + sizeof(catmfs_inode_t));
        int x = 0;
        bool found = false;
        for (;; x++) {
            catmfs_dir_t *dir = (catmfs_dir_t *) raw;
            if (dir->inode == 0 && x--)break;
            if (dir->name_len > 255) {
                deprintf("Bad namelen:%x", dir->name_len);
                return -1;
            }
            if (dir->inode == (uint32_t) inode) {
                dprintf("found in finode %x addr:%x", inode->finode, dir);
                found = true;
                uint32_t next = (uint32_t) dir + dir->len;
                dprintf("cpy %x to %x size %x", next, dir, fsp->page_size - (next - (uint32_t) inode->finode));
                memcpy((uint32_t) dir, next, fsp->page_size - (next - (uint32_t) inode->finode));
                inode->finode->reserved--;
                break;
            }
            raw = (uint8_t *) ((uint32_t) raw + dir->len);
            if ((uint32_t) raw - (uint32_t) inode > 0x1000 && x--)
                break;
        }
        if (!found)
            deprintf("%x is not in father inode %x", inode, inode->finode);
    } else {
        deprintf("cannot remove root inode:%x,use umount(//TODO) instead.", inode);
        catmfs_set_errno(fsp, CATMFS_ERR_GEN);
        return 1;
    }
    int blkc = 0;
    //free blks
    if (inode->singly_block) {
        putf_const("found singly blk:%x,free it.", inode->singly_block);
        uint32_t *blk = (uint32_t *) inode->singly_block;
        while (*blk != 0) {
            kfree(*blk);
            blkc++;
            blk++;
        }
        kfree(inode->singly_block);
        blkc++;
    }
    kfree(inode);
    blkc++;
    dprintf("rm done.free %x blks", blkc);
    return 0;
}

int catmfs_fs_node_load_catrfmt(fs_node_t *node, __fs_special_t *fsp_, uint32_t start_addr) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    catrfmt_t *fs = catrfmt_init(start_addr);
    dprintf("loading %x;table count:%x", start_addr, fs->table_count);
    for (int cur_table_no = 0; cur_table_no < fs->table_count; cur_table_no++) {
        dprintf("table[%d]", cur_table_no);
        catrfmt_obj_table_t *table = fs->tables + sizeof(catrfmt_obj_table_t) * cur_table_no;
        for (int x = 0; x < table->count; x++) {
            catrfmt_obj_t *obj = &table->objects[x];
            fs_node_t *rfmtnode = catrfmt_create_fs_node(obj);
            catmfs_make_rfmt_file(fsp, inode, obj->name, rfmtnode);
            dprintf("[*]file:%s len:%d offset:%d", obj->name, obj->length, obj->offset);
        }
        dprintf("table[%d] end.", cur_table_no);
    }
    return 0;
    _err:
    return 1;
}

int catmfs_fs_node_lseek(fs_node_t *node, __fs_special_t *fsp_, uint32_t offset) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->lseek == NULL)return -1;
            return oper->lseek(node, (void *) inode->reserved2, offset);
        }
    }
    node->offset = offset;
    return 0;
}

uint32_t catmfs_fs_node_tell(fs_node_t *node, __fs_special_t *fsp_) {
    return node->offset;
}

int catmfs_fs_node_open(file_handle_t *handler) {
    catmfs_inode_t *inode = (catmfs_inode_t *) handler->node.inode;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->open == NULL)return -1;
            return oper->open(handler);
        }
    }
    return 0;
}

int catmfs_fs_node_close(file_handle_t *handler) {
    catmfs_inode_t *inode = (catmfs_inode_t *) handler->node.inode;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->close == NULL)return -1;
            return oper->open(handler);
        }
    }
    return 0;
}

int catmfs_fs_node_symlink(struct fs_node *node, __fs_special_t *fsp_, const char *target) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    catmfs_special_t *fsp = fsp_;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    if (inode->type != FS_SYMLINK) {
        deprintf("not a symlink file!");
        return -1;
    }
    int len = strlen(target);
    CHK(catmfs_fs_node_lseek(node, fsp_, 0), "");
    if (catmfs_fs_node_write(node, fsp_, len, target) != len) {
        deprintf("fail to write symlink...");
        goto _err;
    }
    return 0;
    _err:
    deprintf("failed to make symlink!");
    return -1;
}

int catmfs_fs_node_readlink(fs_node_t *node, __fs_special_t *fsp_,
                            char *buff, int max_len) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    CHK(catmfs_fs_node_lseek(node, fsp_, 0), "");
    if (catmfs_fs_node_read(node, fsp_, max_len, buff) < 0)
        goto _err;
    return 0;
    _err:
    deprintf("failed to read symlink!");
    return -1;
}

inline int catmfs_fast_symlink(fs_node_t *node, __fs_special_t *fsp_,
                               const char *name, const char *target) {
    fs_node_t selfnode;
    CHK(catmfs_fs_node_make(node, fsp_, FS_SYMLINK, name), "");
    CHK(catmfs_fs_node_finddir(node, fsp_, name, &selfnode), "");
    CHK(catmfs_fs_node_symlink(&selfnode, fsp_, target), "");
    return 0;
    _err:
    return -1;
}

int catmfs_fs_node_ioctl(fs_node_t *node, __fs_special_t *fsp_,
                         unsigned int cmd, unsigned long arg) {
    catmfs_inode_t *inode = (catmfs_inode_t *) node->inode;
    if (inode->magic != CATMFS_MAGIC) {
        deprintf("not a catmfs node[%x][%x].", inode, inode->magic);
        return 1;
    }
    switch (inode->stype) {
        case CATMFS_STYPE_OVERLAY: {
            file_operations_t *oper = (file_operations_t *) inode->reserved;
            if (oper == NULL || oper->ioctl == NULL)return -1;
            return oper->ioctl(node, (void *) inode->reserved2, cmd, arg);
        }
    }
    return -EINVAL;
}

__fs_special_t *catmfs_fs_node_mount(void *dev, fs_node_t *node) {
    catmfs_special_t *fsp = (catmfs_special_t *) kmalloc(sizeof(catmfs_special_t));
    catmfs_inode_t *root = catmfs_alloc_inode();
    fsp->root_inode_id = (uint32_t) root;
    fsp->page_size = 0x1000;
    fsp->max_singly_blks = fsp->page_size / sizeof(uint32_t);
    root->type = FS_DIRECTORY;
    root->size = 1024;
    root->permission = 00777;
    root->uid = root->gid = 0;//root:root
    root->finode = 0;
    root->reserved = 0;
    catmfs_get_fs_node(fsp->root_inode_id, node);
    CHK(catmfs_make(fsp, root, FS_DIRECTORY, ".", root), "");
    CHK(catmfs_make(fsp, root, FS_DIRECTORY, "..", root), "");
    return fsp;
    _err:
    return NULL;
}

fs_t catmfs = {
        .name="catmfs",
        .make=(make_type_t) catmfs_fs_node_make,
        .readdir=catmfs_fs_node_readdir,
        .mount=catmfs_fs_node_mount,
        .finddir=catmfs_fs_node_finddir,
        .read=catmfs_fs_node_read,
        .write=catmfs_fs_node_write,
        .rm=catmfs_fs_node_rm,
        .lseek=catmfs_fs_node_lseek,
        .tell=catmfs_fs_node_tell,
        .open=catmfs_fs_node_open,
        .close=catmfs_fs_node_close,
        .symlink=catmfs_fs_node_symlink,
        .readlink=catmfs_fs_node_readlink,
        .ioctl=catmfs_fs_node_ioctl
};

void catmfs_create_fstype() {
}