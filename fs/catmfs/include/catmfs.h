//
// Created by dcat on 8/25/17.
//

#ifndef W2_CATMFS_H
#define W2_CATMFS_H

#include "fs_node.h"
#include "vfs.h"

#define CATMFS_MAGIC 0x3366
#define CATMFS_BLK 0xAA32

#define CATMFS_ERR_NONE 0
#define CATMFS_ERR_GEN 1
#define CATMFS_ERR_IO 2
#define CATMFS_ERR_NO_EMPTY_DIR 3

#define CATMFS_STYPE_ORIG 0
#define CATMFS_STYPE_RFMT 1
#define CATMFS_STYPE_OVERLAY 2
typedef struct catmfs_inode {
    uint16_t magic;
    uint8_t type;/*FS_** */
    uint8_t stype;
    uint16_t permission;
    uint32_t size;
    uint32_t uid;
    uint32_t gid;
    uint32_t reserved;/*DIR:child inodes count;FILE:fops or undefined*/
    uint32_t reserved2;
    struct catmfs_inode *finode;
    uint32_t singly_block;
    //data;
} catmfs_inode_t;
typedef struct {
    uint16_t magic;
    //data
} catmfs_blk_t;
typedef struct {
    uint32_t inode;
    uint16_t type;
    uint8_t len;
    uint8_t name_len;
} catmfs_dir_t;
typedef struct {
    uint32_t root_inode_id;
    uint32_t page_size;
    uint32_t max_singly_blks;
    int8_t errno;
} catmfs_special_t;
typedef struct file_operations {
    read_type_t read;
    write_type_t write;
    lseek_type_t lseek;
    open_type_t open;
    close_type_t close;
    ioctl_type_t ioctl;
} file_operations_t;

int catmfs_fs_node_load_catrfmt(fs_node_t *node, __fs_special_t *fsp_, uint32_t start_addr);

void catmfs_create_fstype();

catmfs_inode_t *catmfs_alloc_inode();

int catmfs_make(catmfs_special_t *fsp, catmfs_inode_t *inode, uint8_t type, const char *name, uint32_t catrfmt_inode);

int catmfs_fs_node_make(fs_node_t *node, __fs_special_t *fsp_, uint8_t type, const char *name);

int32_t catmfs_fs_node_readdir(fs_node_t *node, __fs_special_t *fsp_, uint32_t count, struct dirent *result);

int catmfs_fs_node_finddir(fs_node_t *node, __fs_special_t *fsp_, const char *name, fs_node_t *result_out);

int catmfs_get_fs_node(uint32_t inode_id, fs_node_t *node);

int32_t catmfs_fs_node_read(fs_node_t *node, __fs_special_t *fsp_, uint32_t size, uint8_t *buff);

int32_t catmfs_fs_node_write(fs_node_t *node, __fs_special_t *fsp_, uint32_t size, uint8_t *buff);

int catmfs_fs_node_rm(fs_node_t *node, __fs_special_t *fsp_);

__fs_special_t *catmfs_fs_node_mount(void *dev, fs_node_t *node);

int catmfs_fs_node_lseek(fs_node_t *node, __fs_special_t *fsp_, uint32_t offset);

int catmfs_make_rfmt_file(catmfs_special_t *fsp, catmfs_inode_t *inode,
                          const char *name, fs_node_t *rfmt_node);

int catmfs_make_overlay_file(catmfs_special_t *fsp, catmfs_inode_t *inode,
                             const char *name, file_operations_t *fop, void *extern_data);

int catmfs_fs_node_symlink(struct fs_node *node, __fs_special_t *fsp_, const char *target);

int catmfs_fs_node_readlink(fs_node_t *node, __fs_special_t *fsp_,
                            char *buff, int max_len);

int catmfs_fast_symlink(fs_node_t *node, __fs_special_t *fsp_,
                        const char *name, const char *target);

int catmfs_fs_node_ioctl(fs_node_t *node, __fs_special_t *fsp_,
                         unsigned int cmd, unsigned long arg);

#endif //W2_CATMFS_H
