# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/fjpolo/Downloads/updater.beta.20190604.4.linux/KendryteIDE/LocalPackage/cmake/bin/cmake

# The command to remove a file.
RM = /home/fjpolo/Downloads/updater.beta.20190604.4.linux/KendryteIDE/LocalPackage/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build

# Include any dependencies generated for this target.
include CMakeFiles/001HelloWorld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/001HelloWorld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/001HelloWorld.dir/flags.make

CMakeFiles/001HelloWorld.dir/src/main.c.obj: CMakeFiles/001HelloWorld.dir/flags.make
CMakeFiles/001HelloWorld.dir/src/main.c.obj: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/001HelloWorld.dir/src/main.c.obj"
	/home/fjpolo/Downloads/updater.beta.20190604.4.linux/KendryteIDE/LocalPackage/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/001HelloWorld.dir/src/main.c.obj   -c /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/src/main.c

CMakeFiles/001HelloWorld.dir/src/main.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/001HelloWorld.dir/src/main.c.i"
	/home/fjpolo/Downloads/updater.beta.20190604.4.linux/KendryteIDE/LocalPackage/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/src/main.c > CMakeFiles/001HelloWorld.dir/src/main.c.i

CMakeFiles/001HelloWorld.dir/src/main.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/001HelloWorld.dir/src/main.c.s"
	/home/fjpolo/Downloads/updater.beta.20190604.4.linux/KendryteIDE/LocalPackage/toolchain/bin/riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/src/main.c -o CMakeFiles/001HelloWorld.dir/src/main.c.s

# Object files for target 001HelloWorld
001HelloWorld_OBJECTS = \
"CMakeFiles/001HelloWorld.dir/src/main.c.obj"

# External object files for target 001HelloWorld
001HelloWorld_EXTERNAL_OBJECTS =

001HelloWorld: CMakeFiles/001HelloWorld.dir/src/main.c.obj
001HelloWorld: CMakeFiles/001HelloWorld.dir/build.make
001HelloWorld: kendryte_standalone-sdk/libkendryte_standalone-sdk.a
001HelloWorld: CMakeFiles/001HelloWorld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 001HelloWorld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/001HelloWorld.dir/link.txt --verbose=$(VERBOSE)
	@echo "Generating .bin file ..."
	riscv64-unknown-elf-objcopy --output-format=binary /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build/001HelloWorld /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build/001HelloWorld.bin

# Rule to build all files generated by this target.
CMakeFiles/001HelloWorld.dir/build: 001HelloWorld

.PHONY : CMakeFiles/001HelloWorld.dir/build

CMakeFiles/001HelloWorld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/001HelloWorld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/001HelloWorld.dir/clean

CMakeFiles/001HelloWorld.dir/depend:
	cd /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build /home/fjpolo/ML/Sipeed/Firmware/uncompiled/SipeedIDE/001HelloWorld/build/CMakeFiles/001HelloWorld.dir/DependInfo.cmake
.PHONY : CMakeFiles/001HelloWorld.dir/depend

