# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/dcat/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/dcat/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dcat/osdev/w2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dcat/osdev/w2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MyExecutable.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MyExecutable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyExecutable.dir/flags.make

CMakeFiles/MyExecutable.dir/catmfs.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/catmfs.c.o: ../catmfs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MyExecutable.dir/catmfs.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/catmfs.c.o   -c /home/dcat/osdev/w2/catmfs.c

CMakeFiles/MyExecutable.dir/catmfs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/catmfs.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/catmfs.c > CMakeFiles/MyExecutable.dir/catmfs.c.i

CMakeFiles/MyExecutable.dir/catmfs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/catmfs.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/catmfs.c -o CMakeFiles/MyExecutable.dir/catmfs.c.s

CMakeFiles/MyExecutable.dir/catmfs.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/catmfs.c.o.requires

CMakeFiles/MyExecutable.dir/catmfs.c.o.provides: CMakeFiles/MyExecutable.dir/catmfs.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/catmfs.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/catmfs.c.o.provides

CMakeFiles/MyExecutable.dir/catmfs.c.o.provides.build: CMakeFiles/MyExecutable.dir/catmfs.c.o


CMakeFiles/MyExecutable.dir/contious_heap.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/contious_heap.c.o: ../contious_heap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/MyExecutable.dir/contious_heap.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/contious_heap.c.o   -c /home/dcat/osdev/w2/contious_heap.c

CMakeFiles/MyExecutable.dir/contious_heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/contious_heap.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/contious_heap.c > CMakeFiles/MyExecutable.dir/contious_heap.c.i

CMakeFiles/MyExecutable.dir/contious_heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/contious_heap.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/contious_heap.c -o CMakeFiles/MyExecutable.dir/contious_heap.c.s

CMakeFiles/MyExecutable.dir/contious_heap.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/contious_heap.c.o.requires

CMakeFiles/MyExecutable.dir/contious_heap.c.o.provides: CMakeFiles/MyExecutable.dir/contious_heap.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/contious_heap.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/contious_heap.c.o.provides

CMakeFiles/MyExecutable.dir/contious_heap.c.o.provides.build: CMakeFiles/MyExecutable.dir/contious_heap.c.o


CMakeFiles/MyExecutable.dir/fs_node.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/fs_node.c.o: ../fs_node.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/MyExecutable.dir/fs_node.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/fs_node.c.o   -c /home/dcat/osdev/w2/fs_node.c

CMakeFiles/MyExecutable.dir/fs_node.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/fs_node.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/fs_node.c > CMakeFiles/MyExecutable.dir/fs_node.c.i

CMakeFiles/MyExecutable.dir/fs_node.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/fs_node.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/fs_node.c -o CMakeFiles/MyExecutable.dir/fs_node.c.s

CMakeFiles/MyExecutable.dir/fs_node.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/fs_node.c.o.requires

CMakeFiles/MyExecutable.dir/fs_node.c.o.provides: CMakeFiles/MyExecutable.dir/fs_node.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/fs_node.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/fs_node.c.o.provides

CMakeFiles/MyExecutable.dir/fs_node.c.o.provides.build: CMakeFiles/MyExecutable.dir/fs_node.c.o


CMakeFiles/MyExecutable.dir/gdt.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/gdt.c.o: ../gdt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/MyExecutable.dir/gdt.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/gdt.c.o   -c /home/dcat/osdev/w2/gdt.c

CMakeFiles/MyExecutable.dir/gdt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/gdt.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/gdt.c > CMakeFiles/MyExecutable.dir/gdt.c.i

CMakeFiles/MyExecutable.dir/gdt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/gdt.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/gdt.c -o CMakeFiles/MyExecutable.dir/gdt.c.s

CMakeFiles/MyExecutable.dir/gdt.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/gdt.c.o.requires

CMakeFiles/MyExecutable.dir/gdt.c.o.provides: CMakeFiles/MyExecutable.dir/gdt.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/gdt.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/gdt.c.o.provides

CMakeFiles/MyExecutable.dir/gdt.c.o.provides.build: CMakeFiles/MyExecutable.dir/gdt.c.o


CMakeFiles/MyExecutable.dir/heap_array_list.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/heap_array_list.c.o: ../heap_array_list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/MyExecutable.dir/heap_array_list.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/heap_array_list.c.o   -c /home/dcat/osdev/w2/heap_array_list.c

CMakeFiles/MyExecutable.dir/heap_array_list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/heap_array_list.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/heap_array_list.c > CMakeFiles/MyExecutable.dir/heap_array_list.c.i

CMakeFiles/MyExecutable.dir/heap_array_list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/heap_array_list.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/heap_array_list.c -o CMakeFiles/MyExecutable.dir/heap_array_list.c.s

CMakeFiles/MyExecutable.dir/heap_array_list.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/heap_array_list.c.o.requires

CMakeFiles/MyExecutable.dir/heap_array_list.c.o.provides: CMakeFiles/MyExecutable.dir/heap_array_list.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/heap_array_list.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/heap_array_list.c.o.provides

CMakeFiles/MyExecutable.dir/heap_array_list.c.o.provides.build: CMakeFiles/MyExecutable.dir/heap_array_list.c.o


CMakeFiles/MyExecutable.dir/ide.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/ide.c.o: ../ide.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/MyExecutable.dir/ide.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/ide.c.o   -c /home/dcat/osdev/w2/ide.c

CMakeFiles/MyExecutable.dir/ide.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/ide.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/ide.c > CMakeFiles/MyExecutable.dir/ide.c.i

CMakeFiles/MyExecutable.dir/ide.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/ide.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/ide.c -o CMakeFiles/MyExecutable.dir/ide.c.s

CMakeFiles/MyExecutable.dir/ide.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/ide.c.o.requires

CMakeFiles/MyExecutable.dir/ide.c.o.provides: CMakeFiles/MyExecutable.dir/ide.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/ide.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/ide.c.o.provides

CMakeFiles/MyExecutable.dir/ide.c.o.provides.build: CMakeFiles/MyExecutable.dir/ide.c.o


CMakeFiles/MyExecutable.dir/idt.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/idt.c.o: ../idt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/MyExecutable.dir/idt.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/idt.c.o   -c /home/dcat/osdev/w2/idt.c

CMakeFiles/MyExecutable.dir/idt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/idt.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/idt.c > CMakeFiles/MyExecutable.dir/idt.c.i

CMakeFiles/MyExecutable.dir/idt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/idt.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/idt.c -o CMakeFiles/MyExecutable.dir/idt.c.s

CMakeFiles/MyExecutable.dir/idt.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/idt.c.o.requires

CMakeFiles/MyExecutable.dir/idt.c.o.provides: CMakeFiles/MyExecutable.dir/idt.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/idt.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/idt.c.o.provides

CMakeFiles/MyExecutable.dir/idt.c.o.provides.build: CMakeFiles/MyExecutable.dir/idt.c.o


CMakeFiles/MyExecutable.dir/irqs.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/irqs.c.o: ../irqs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/MyExecutable.dir/irqs.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/irqs.c.o   -c /home/dcat/osdev/w2/irqs.c

CMakeFiles/MyExecutable.dir/irqs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/irqs.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/irqs.c > CMakeFiles/MyExecutable.dir/irqs.c.i

CMakeFiles/MyExecutable.dir/irqs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/irqs.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/irqs.c -o CMakeFiles/MyExecutable.dir/irqs.c.s

CMakeFiles/MyExecutable.dir/irqs.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/irqs.c.o.requires

CMakeFiles/MyExecutable.dir/irqs.c.o.provides: CMakeFiles/MyExecutable.dir/irqs.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/irqs.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/irqs.c.o.provides

CMakeFiles/MyExecutable.dir/irqs.c.o.provides.build: CMakeFiles/MyExecutable.dir/irqs.c.o


CMakeFiles/MyExecutable.dir/isrs.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/isrs.c.o: ../isrs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/MyExecutable.dir/isrs.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/isrs.c.o   -c /home/dcat/osdev/w2/isrs.c

CMakeFiles/MyExecutable.dir/isrs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/isrs.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/isrs.c > CMakeFiles/MyExecutable.dir/isrs.c.i

CMakeFiles/MyExecutable.dir/isrs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/isrs.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/isrs.c -o CMakeFiles/MyExecutable.dir/isrs.c.s

CMakeFiles/MyExecutable.dir/isrs.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/isrs.c.o.requires

CMakeFiles/MyExecutable.dir/isrs.c.o.provides: CMakeFiles/MyExecutable.dir/isrs.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/isrs.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/isrs.c.o.provides

CMakeFiles/MyExecutable.dir/isrs.c.o.provides.build: CMakeFiles/MyExecutable.dir/isrs.c.o


CMakeFiles/MyExecutable.dir/keyboard.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/keyboard.c.o: ../keyboard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/MyExecutable.dir/keyboard.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/keyboard.c.o   -c /home/dcat/osdev/w2/keyboard.c

CMakeFiles/MyExecutable.dir/keyboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/keyboard.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/keyboard.c > CMakeFiles/MyExecutable.dir/keyboard.c.i

CMakeFiles/MyExecutable.dir/keyboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/keyboard.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/keyboard.c -o CMakeFiles/MyExecutable.dir/keyboard.c.s

CMakeFiles/MyExecutable.dir/keyboard.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/keyboard.c.o.requires

CMakeFiles/MyExecutable.dir/keyboard.c.o.provides: CMakeFiles/MyExecutable.dir/keyboard.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/keyboard.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/keyboard.c.o.provides

CMakeFiles/MyExecutable.dir/keyboard.c.o.provides.build: CMakeFiles/MyExecutable.dir/keyboard.c.o


CMakeFiles/MyExecutable.dir/kmalloc.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/kmalloc.c.o: ../kmalloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/MyExecutable.dir/kmalloc.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/kmalloc.c.o   -c /home/dcat/osdev/w2/kmalloc.c

CMakeFiles/MyExecutable.dir/kmalloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/kmalloc.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/kmalloc.c > CMakeFiles/MyExecutable.dir/kmalloc.c.i

CMakeFiles/MyExecutable.dir/kmalloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/kmalloc.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/kmalloc.c -o CMakeFiles/MyExecutable.dir/kmalloc.c.s

CMakeFiles/MyExecutable.dir/kmalloc.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/kmalloc.c.o.requires

CMakeFiles/MyExecutable.dir/kmalloc.c.o.provides: CMakeFiles/MyExecutable.dir/kmalloc.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/kmalloc.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/kmalloc.c.o.provides

CMakeFiles/MyExecutable.dir/kmalloc.c.o.provides.build: CMakeFiles/MyExecutable.dir/kmalloc.c.o


CMakeFiles/MyExecutable.dir/linkedlist.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/linkedlist.c.o: ../linkedlist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/MyExecutable.dir/linkedlist.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/linkedlist.c.o   -c /home/dcat/osdev/w2/linkedlist.c

CMakeFiles/MyExecutable.dir/linkedlist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/linkedlist.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/linkedlist.c > CMakeFiles/MyExecutable.dir/linkedlist.c.i

CMakeFiles/MyExecutable.dir/linkedlist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/linkedlist.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/linkedlist.c -o CMakeFiles/MyExecutable.dir/linkedlist.c.s

CMakeFiles/MyExecutable.dir/linkedlist.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/linkedlist.c.o.requires

CMakeFiles/MyExecutable.dir/linkedlist.c.o.provides: CMakeFiles/MyExecutable.dir/linkedlist.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/linkedlist.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/linkedlist.c.o.provides

CMakeFiles/MyExecutable.dir/linkedlist.c.o.provides.build: CMakeFiles/MyExecutable.dir/linkedlist.c.o


CMakeFiles/MyExecutable.dir/main.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/MyExecutable.dir/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/main.c.o   -c /home/dcat/osdev/w2/main.c

CMakeFiles/MyExecutable.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/main.c > CMakeFiles/MyExecutable.dir/main.c.i

CMakeFiles/MyExecutable.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/main.c -o CMakeFiles/MyExecutable.dir/main.c.s

CMakeFiles/MyExecutable.dir/main.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/main.c.o.requires

CMakeFiles/MyExecutable.dir/main.c.o.provides: CMakeFiles/MyExecutable.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/main.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/main.c.o.provides

CMakeFiles/MyExecutable.dir/main.c.o.provides.build: CMakeFiles/MyExecutable.dir/main.c.o


CMakeFiles/MyExecutable.dir/page.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/page.c.o: ../page.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/MyExecutable.dir/page.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/page.c.o   -c /home/dcat/osdev/w2/page.c

CMakeFiles/MyExecutable.dir/page.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/page.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/page.c > CMakeFiles/MyExecutable.dir/page.c.i

CMakeFiles/MyExecutable.dir/page.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/page.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/page.c -o CMakeFiles/MyExecutable.dir/page.c.s

CMakeFiles/MyExecutable.dir/page.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/page.c.o.requires

CMakeFiles/MyExecutable.dir/page.c.o.provides: CMakeFiles/MyExecutable.dir/page.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/page.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/page.c.o.provides

CMakeFiles/MyExecutable.dir/page.c.o.provides.build: CMakeFiles/MyExecutable.dir/page.c.o


CMakeFiles/MyExecutable.dir/proc.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/proc.c.o: ../proc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/MyExecutable.dir/proc.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/proc.c.o   -c /home/dcat/osdev/w2/proc.c

CMakeFiles/MyExecutable.dir/proc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/proc.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/proc.c > CMakeFiles/MyExecutable.dir/proc.c.i

CMakeFiles/MyExecutable.dir/proc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/proc.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/proc.c -o CMakeFiles/MyExecutable.dir/proc.c.s

CMakeFiles/MyExecutable.dir/proc.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/proc.c.o.requires

CMakeFiles/MyExecutable.dir/proc.c.o.provides: CMakeFiles/MyExecutable.dir/proc.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/proc.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/proc.c.o.provides

CMakeFiles/MyExecutable.dir/proc.c.o.provides.build: CMakeFiles/MyExecutable.dir/proc.c.o


CMakeFiles/MyExecutable.dir/screen.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/screen.c.o: ../screen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/MyExecutable.dir/screen.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/screen.c.o   -c /home/dcat/osdev/w2/screen.c

CMakeFiles/MyExecutable.dir/screen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/screen.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/screen.c > CMakeFiles/MyExecutable.dir/screen.c.i

CMakeFiles/MyExecutable.dir/screen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/screen.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/screen.c -o CMakeFiles/MyExecutable.dir/screen.c.s

CMakeFiles/MyExecutable.dir/screen.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/screen.c.o.requires

CMakeFiles/MyExecutable.dir/screen.c.o.provides: CMakeFiles/MyExecutable.dir/screen.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/screen.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/screen.c.o.provides

CMakeFiles/MyExecutable.dir/screen.c.o.provides.build: CMakeFiles/MyExecutable.dir/screen.c.o


CMakeFiles/MyExecutable.dir/str.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/str.c.o: ../str.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/MyExecutable.dir/str.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/str.c.o   -c /home/dcat/osdev/w2/str.c

CMakeFiles/MyExecutable.dir/str.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/str.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/str.c > CMakeFiles/MyExecutable.dir/str.c.i

CMakeFiles/MyExecutable.dir/str.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/str.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/str.c -o CMakeFiles/MyExecutable.dir/str.c.s

CMakeFiles/MyExecutable.dir/str.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/str.c.o.requires

CMakeFiles/MyExecutable.dir/str.c.o.provides: CMakeFiles/MyExecutable.dir/str.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/str.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/str.c.o.provides

CMakeFiles/MyExecutable.dir/str.c.o.provides.build: CMakeFiles/MyExecutable.dir/str.c.o


CMakeFiles/MyExecutable.dir/syscall.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/syscall.c.o: ../syscall.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/MyExecutable.dir/syscall.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/syscall.c.o   -c /home/dcat/osdev/w2/syscall.c

CMakeFiles/MyExecutable.dir/syscall.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/syscall.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/syscall.c > CMakeFiles/MyExecutable.dir/syscall.c.i

CMakeFiles/MyExecutable.dir/syscall.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/syscall.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/syscall.c -o CMakeFiles/MyExecutable.dir/syscall.c.s

CMakeFiles/MyExecutable.dir/syscall.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/syscall.c.o.requires

CMakeFiles/MyExecutable.dir/syscall.c.o.provides: CMakeFiles/MyExecutable.dir/syscall.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/syscall.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/syscall.c.o.provides

CMakeFiles/MyExecutable.dir/syscall.c.o.provides.build: CMakeFiles/MyExecutable.dir/syscall.c.o


CMakeFiles/MyExecutable.dir/system.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/system.c.o: ../system.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/MyExecutable.dir/system.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/system.c.o   -c /home/dcat/osdev/w2/system.c

CMakeFiles/MyExecutable.dir/system.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/system.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/system.c > CMakeFiles/MyExecutable.dir/system.c.i

CMakeFiles/MyExecutable.dir/system.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/system.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/system.c -o CMakeFiles/MyExecutable.dir/system.c.s

CMakeFiles/MyExecutable.dir/system.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/system.c.o.requires

CMakeFiles/MyExecutable.dir/system.c.o.provides: CMakeFiles/MyExecutable.dir/system.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/system.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/system.c.o.provides

CMakeFiles/MyExecutable.dir/system.c.o.provides.build: CMakeFiles/MyExecutable.dir/system.c.o


CMakeFiles/MyExecutable.dir/timer.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/timer.c.o: ../timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/MyExecutable.dir/timer.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/timer.c.o   -c /home/dcat/osdev/w2/timer.c

CMakeFiles/MyExecutable.dir/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/timer.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/timer.c > CMakeFiles/MyExecutable.dir/timer.c.i

CMakeFiles/MyExecutable.dir/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/timer.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/timer.c -o CMakeFiles/MyExecutable.dir/timer.c.s

CMakeFiles/MyExecutable.dir/timer.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/timer.c.o.requires

CMakeFiles/MyExecutable.dir/timer.c.o.provides: CMakeFiles/MyExecutable.dir/timer.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/timer.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/timer.c.o.provides

CMakeFiles/MyExecutable.dir/timer.c.o.provides.build: CMakeFiles/MyExecutable.dir/timer.c.o


CMakeFiles/MyExecutable.dir/tss.c.o: CMakeFiles/MyExecutable.dir/flags.make
CMakeFiles/MyExecutable.dir/tss.c.o: ../tss.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/MyExecutable.dir/tss.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MyExecutable.dir/tss.c.o   -c /home/dcat/osdev/w2/tss.c

CMakeFiles/MyExecutable.dir/tss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyExecutable.dir/tss.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dcat/osdev/w2/tss.c > CMakeFiles/MyExecutable.dir/tss.c.i

CMakeFiles/MyExecutable.dir/tss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyExecutable.dir/tss.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dcat/osdev/w2/tss.c -o CMakeFiles/MyExecutable.dir/tss.c.s

CMakeFiles/MyExecutable.dir/tss.c.o.requires:

.PHONY : CMakeFiles/MyExecutable.dir/tss.c.o.requires

CMakeFiles/MyExecutable.dir/tss.c.o.provides: CMakeFiles/MyExecutable.dir/tss.c.o.requires
	$(MAKE) -f CMakeFiles/MyExecutable.dir/build.make CMakeFiles/MyExecutable.dir/tss.c.o.provides.build
.PHONY : CMakeFiles/MyExecutable.dir/tss.c.o.provides

CMakeFiles/MyExecutable.dir/tss.c.o.provides.build: CMakeFiles/MyExecutable.dir/tss.c.o


# Object files for target MyExecutable
MyExecutable_OBJECTS = \
"CMakeFiles/MyExecutable.dir/catmfs.c.o" \
"CMakeFiles/MyExecutable.dir/contious_heap.c.o" \
"CMakeFiles/MyExecutable.dir/fs_node.c.o" \
"CMakeFiles/MyExecutable.dir/gdt.c.o" \
"CMakeFiles/MyExecutable.dir/heap_array_list.c.o" \
"CMakeFiles/MyExecutable.dir/ide.c.o" \
"CMakeFiles/MyExecutable.dir/idt.c.o" \
"CMakeFiles/MyExecutable.dir/irqs.c.o" \
"CMakeFiles/MyExecutable.dir/isrs.c.o" \
"CMakeFiles/MyExecutable.dir/keyboard.c.o" \
"CMakeFiles/MyExecutable.dir/kmalloc.c.o" \
"CMakeFiles/MyExecutable.dir/linkedlist.c.o" \
"CMakeFiles/MyExecutable.dir/main.c.o" \
"CMakeFiles/MyExecutable.dir/page.c.o" \
"CMakeFiles/MyExecutable.dir/proc.c.o" \
"CMakeFiles/MyExecutable.dir/screen.c.o" \
"CMakeFiles/MyExecutable.dir/str.c.o" \
"CMakeFiles/MyExecutable.dir/syscall.c.o" \
"CMakeFiles/MyExecutable.dir/system.c.o" \
"CMakeFiles/MyExecutable.dir/timer.c.o" \
"CMakeFiles/MyExecutable.dir/tss.c.o"

# External object files for target MyExecutable
MyExecutable_EXTERNAL_OBJECTS =

MyExecutable: CMakeFiles/MyExecutable.dir/catmfs.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/contious_heap.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/fs_node.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/gdt.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/heap_array_list.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/ide.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/idt.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/irqs.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/isrs.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/keyboard.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/kmalloc.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/linkedlist.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/main.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/page.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/proc.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/screen.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/str.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/syscall.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/system.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/timer.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/tss.c.o
MyExecutable: CMakeFiles/MyExecutable.dir/build.make
MyExecutable: CMakeFiles/MyExecutable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dcat/osdev/w2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Linking C executable MyExecutable"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyExecutable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyExecutable.dir/build: MyExecutable

.PHONY : CMakeFiles/MyExecutable.dir/build

CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/catmfs.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/contious_heap.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/fs_node.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/gdt.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/heap_array_list.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/ide.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/idt.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/irqs.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/isrs.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/keyboard.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/kmalloc.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/linkedlist.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/main.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/page.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/proc.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/screen.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/str.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/syscall.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/system.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/timer.c.o.requires
CMakeFiles/MyExecutable.dir/requires: CMakeFiles/MyExecutable.dir/tss.c.o.requires

.PHONY : CMakeFiles/MyExecutable.dir/requires

CMakeFiles/MyExecutable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyExecutable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyExecutable.dir/clean

CMakeFiles/MyExecutable.dir/depend:
	cd /home/dcat/osdev/w2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dcat/osdev/w2 /home/dcat/osdev/w2 /home/dcat/osdev/w2/cmake-build-debug /home/dcat/osdev/w2/cmake-build-debug /home/dcat/osdev/w2/cmake-build-debug/CMakeFiles/MyExecutable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyExecutable.dir/depend

