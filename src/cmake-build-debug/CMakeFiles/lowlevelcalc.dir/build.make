# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Sistah\src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Sistah\src\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lowlevelcalc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lowlevelcalc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lowlevelcalc.dir/flags.make

CMakeFiles/lowlevelcalc.dir/main.c.obj: CMakeFiles/lowlevelcalc.dir/flags.make
CMakeFiles/lowlevelcalc.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Sistah\src\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lowlevelcalc.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lowlevelcalc.dir\main.c.obj   -c D:\Sistah\src\main.c

CMakeFiles/lowlevelcalc.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lowlevelcalc.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Sistah\src\main.c > CMakeFiles\lowlevelcalc.dir\main.c.i

CMakeFiles/lowlevelcalc.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lowlevelcalc.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Sistah\src\main.c -o CMakeFiles\lowlevelcalc.dir\main.c.s

# Object files for target lowlevelcalc
lowlevelcalc_OBJECTS = \
"CMakeFiles/lowlevelcalc.dir/main.c.obj"

# External object files for target lowlevelcalc
lowlevelcalc_EXTERNAL_OBJECTS =

lowlevelcalc.exe: CMakeFiles/lowlevelcalc.dir/main.c.obj
lowlevelcalc.exe: CMakeFiles/lowlevelcalc.dir/build.make
lowlevelcalc.exe: CMakeFiles/lowlevelcalc.dir/linklibs.rsp
lowlevelcalc.exe: CMakeFiles/lowlevelcalc.dir/objects1.rsp
lowlevelcalc.exe: CMakeFiles/lowlevelcalc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Sistah\src\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lowlevelcalc.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lowlevelcalc.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lowlevelcalc.dir/build: lowlevelcalc.exe

.PHONY : CMakeFiles/lowlevelcalc.dir/build

CMakeFiles/lowlevelcalc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lowlevelcalc.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lowlevelcalc.dir/clean

CMakeFiles/lowlevelcalc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Sistah\src D:\Sistah\src D:\Sistah\src\cmake-build-debug D:\Sistah\src\cmake-build-debug D:\Sistah\src\cmake-build-debug\CMakeFiles\lowlevelcalc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lowlevelcalc.dir/depend
