# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dmkim/Documents/socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dmkim/Documents/socket/build

# Include any dependencies generated for this target.
include server/CMakeFiles/dongmin_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include server/CMakeFiles/dongmin_server.dir/compiler_depend.make

# Include the progress variables for this target.
include server/CMakeFiles/dongmin_server.dir/progress.make

# Include the compile flags for this target's objects.
include server/CMakeFiles/dongmin_server.dir/flags.make

server/CMakeFiles/dongmin_server.dir/server.cpp.o: server/CMakeFiles/dongmin_server.dir/flags.make
server/CMakeFiles/dongmin_server.dir/server.cpp.o: ../server/server.cpp
server/CMakeFiles/dongmin_server.dir/server.cpp.o: server/CMakeFiles/dongmin_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmkim/Documents/socket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/CMakeFiles/dongmin_server.dir/server.cpp.o"
	cd /home/dmkim/Documents/socket/build/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/CMakeFiles/dongmin_server.dir/server.cpp.o -MF CMakeFiles/dongmin_server.dir/server.cpp.o.d -o CMakeFiles/dongmin_server.dir/server.cpp.o -c /home/dmkim/Documents/socket/server/server.cpp

server/CMakeFiles/dongmin_server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dongmin_server.dir/server.cpp.i"
	cd /home/dmkim/Documents/socket/build/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dmkim/Documents/socket/server/server.cpp > CMakeFiles/dongmin_server.dir/server.cpp.i

server/CMakeFiles/dongmin_server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dongmin_server.dir/server.cpp.s"
	cd /home/dmkim/Documents/socket/build/server && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dmkim/Documents/socket/server/server.cpp -o CMakeFiles/dongmin_server.dir/server.cpp.s

# Object files for target dongmin_server
dongmin_server_OBJECTS = \
"CMakeFiles/dongmin_server.dir/server.cpp.o"

# External object files for target dongmin_server
dongmin_server_EXTERNAL_OBJECTS =

server/libdongmin_server.so: server/CMakeFiles/dongmin_server.dir/server.cpp.o
server/libdongmin_server.so: server/CMakeFiles/dongmin_server.dir/build.make
server/libdongmin_server.so: server/CMakeFiles/dongmin_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmkim/Documents/socket/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdongmin_server.so"
	cd /home/dmkim/Documents/socket/build/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dongmin_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/CMakeFiles/dongmin_server.dir/build: server/libdongmin_server.so
.PHONY : server/CMakeFiles/dongmin_server.dir/build

server/CMakeFiles/dongmin_server.dir/clean:
	cd /home/dmkim/Documents/socket/build/server && $(CMAKE_COMMAND) -P CMakeFiles/dongmin_server.dir/cmake_clean.cmake
.PHONY : server/CMakeFiles/dongmin_server.dir/clean

server/CMakeFiles/dongmin_server.dir/depend:
	cd /home/dmkim/Documents/socket/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmkim/Documents/socket /home/dmkim/Documents/socket/server /home/dmkim/Documents/socket/build /home/dmkim/Documents/socket/build/server /home/dmkim/Documents/socket/build/server/CMakeFiles/dongmin_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/CMakeFiles/dongmin_server.dir/depend
