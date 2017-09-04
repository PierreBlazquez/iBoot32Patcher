# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Pierre/Downloads/iBoot32Patcher-jevmaster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Pierre/Downloads/iBoot32Patcher-jevmaster

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.9.1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.9.1/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/Pierre/Downloads/iBoot32Patcher-jevmaster/CMakeFiles /Users/Pierre/Downloads/iBoot32Patcher-jevmaster/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/Pierre/Downloads/iBoot32Patcher-jevmaster/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named iBoot32Patcher

# Build rule for target.
iBoot32Patcher: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 iBoot32Patcher
.PHONY : iBoot32Patcher

# fast build rule for target.
iBoot32Patcher/fast:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/build
.PHONY : iBoot32Patcher/fast

#=============================================================================
# Target rules for targets named iBoot32Patcher-bin

# Build rule for target.
iBoot32Patcher-bin: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 iBoot32Patcher-bin
.PHONY : iBoot32Patcher-bin

# fast build rule for target.
iBoot32Patcher-bin/fast:
	$(MAKE) -f CMakeFiles/iBoot32Patcher-bin.dir/build.make CMakeFiles/iBoot32Patcher-bin.dir/build
.PHONY : iBoot32Patcher-bin/fast

finders.o: finders.c.o

.PHONY : finders.o

# target to build an object file
finders.c.o:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/finders.c.o
.PHONY : finders.c.o

finders.i: finders.c.i

.PHONY : finders.i

# target to preprocess a source file
finders.c.i:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/finders.c.i
.PHONY : finders.c.i

finders.s: finders.c.s

.PHONY : finders.s

# target to generate assembly for a file
finders.c.s:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/finders.c.s
.PHONY : finders.c.s

functions.o: functions.c.o

.PHONY : functions.o

# target to build an object file
functions.c.o:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/functions.c.o
.PHONY : functions.c.o

functions.i: functions.c.i

.PHONY : functions.i

# target to preprocess a source file
functions.c.i:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/functions.c.i
.PHONY : functions.c.i

functions.s: functions.c.s

.PHONY : functions.s

# target to generate assembly for a file
functions.c.s:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/functions.c.s
.PHONY : functions.c.s

iBoot32Patcher.o: iBoot32Patcher.c.o

.PHONY : iBoot32Patcher.o

# target to build an object file
iBoot32Patcher.c.o:
	$(MAKE) -f CMakeFiles/iBoot32Patcher-bin.dir/build.make CMakeFiles/iBoot32Patcher-bin.dir/iBoot32Patcher.c.o
.PHONY : iBoot32Patcher.c.o

iBoot32Patcher.i: iBoot32Patcher.c.i

.PHONY : iBoot32Patcher.i

# target to preprocess a source file
iBoot32Patcher.c.i:
	$(MAKE) -f CMakeFiles/iBoot32Patcher-bin.dir/build.make CMakeFiles/iBoot32Patcher-bin.dir/iBoot32Patcher.c.i
.PHONY : iBoot32Patcher.c.i

iBoot32Patcher.s: iBoot32Patcher.c.s

.PHONY : iBoot32Patcher.s

# target to generate assembly for a file
iBoot32Patcher.c.s:
	$(MAKE) -f CMakeFiles/iBoot32Patcher-bin.dir/build.make CMakeFiles/iBoot32Patcher-bin.dir/iBoot32Patcher.c.s
.PHONY : iBoot32Patcher.c.s

lib.o: lib.c.o

.PHONY : lib.o

# target to build an object file
lib.c.o:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/lib.c.o
.PHONY : lib.c.o

lib.i: lib.c.i

.PHONY : lib.i

# target to preprocess a source file
lib.c.i:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/lib.c.i
.PHONY : lib.c.i

lib.s: lib.c.s

.PHONY : lib.s

# target to generate assembly for a file
lib.c.s:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/lib.c.s
.PHONY : lib.c.s

patchers.o: patchers.c.o

.PHONY : patchers.o

# target to build an object file
patchers.c.o:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/patchers.c.o
.PHONY : patchers.c.o

patchers.i: patchers.c.i

.PHONY : patchers.i

# target to preprocess a source file
patchers.c.i:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/patchers.c.i
.PHONY : patchers.c.i

patchers.s: patchers.c.s

.PHONY : patchers.s

# target to generate assembly for a file
patchers.c.s:
	$(MAKE) -f CMakeFiles/iBoot32Patcher.dir/build.make CMakeFiles/iBoot32Patcher.dir/patchers.c.s
.PHONY : patchers.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/local"
	@echo "... list_install_components"
	@echo "... iBoot32Patcher"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... install/strip"
	@echo "... install"
	@echo "... iBoot32Patcher-bin"
	@echo "... finders.o"
	@echo "... finders.i"
	@echo "... finders.s"
	@echo "... functions.o"
	@echo "... functions.i"
	@echo "... functions.s"
	@echo "... iBoot32Patcher.o"
	@echo "... iBoot32Patcher.i"
	@echo "... iBoot32Patcher.s"
	@echo "... lib.o"
	@echo "... lib.i"
	@echo "... lib.s"
	@echo "... patchers.o"
	@echo "... patchers.i"
	@echo "... patchers.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

