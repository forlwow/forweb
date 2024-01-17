# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/worker/webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/worker/webserver/build

# Include any dependencies generated for this target.
include server/log/CMakeFiles/log.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include server/log/CMakeFiles/log.dir/compiler_depend.make

# Include the progress variables for this target.
include server/log/CMakeFiles/log.dir/progress.make

# Include the compile flags for this target's objects.
include server/log/CMakeFiles/log.dir/flags.make

server/log/CMakeFiles/log.dir/src/log.cpp.o: server/log/CMakeFiles/log.dir/flags.make
server/log/CMakeFiles/log.dir/src/log.cpp.o: /home/worker/webserver/server/log/src/log.cpp
server/log/CMakeFiles/log.dir/src/log.cpp.o: server/log/CMakeFiles/log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/log/CMakeFiles/log.dir/src/log.cpp.o"
	cd /home/worker/webserver/build/server/log && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/log/CMakeFiles/log.dir/src/log.cpp.o -MF CMakeFiles/log.dir/src/log.cpp.o.d -o CMakeFiles/log.dir/src/log.cpp.o -c /home/worker/webserver/server/log/src/log.cpp

server/log/CMakeFiles/log.dir/src/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/log.dir/src/log.cpp.i"
	cd /home/worker/webserver/build/server/log && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/worker/webserver/server/log/src/log.cpp > CMakeFiles/log.dir/src/log.cpp.i

server/log/CMakeFiles/log.dir/src/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/log.dir/src/log.cpp.s"
	cd /home/worker/webserver/build/server/log && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/worker/webserver/server/log/src/log.cpp -o CMakeFiles/log.dir/src/log.cpp.s

# Object files for target log
log_OBJECTS = \
"CMakeFiles/log.dir/src/log.cpp.o"

# External object files for target log
log_EXTERNAL_OBJECTS =

/home/worker/webserver/lib/liblog.so: server/log/CMakeFiles/log.dir/src/log.cpp.o
/home/worker/webserver/lib/liblog.so: server/log/CMakeFiles/log.dir/build.make
/home/worker/webserver/lib/liblog.so: server/log/CMakeFiles/log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/worker/webserver/lib/liblog.so"
	cd /home/worker/webserver/build/server/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/log/CMakeFiles/log.dir/build: /home/worker/webserver/lib/liblog.so
.PHONY : server/log/CMakeFiles/log.dir/build

server/log/CMakeFiles/log.dir/clean:
	cd /home/worker/webserver/build/server/log && $(CMAKE_COMMAND) -P CMakeFiles/log.dir/cmake_clean.cmake
.PHONY : server/log/CMakeFiles/log.dir/clean

server/log/CMakeFiles/log.dir/depend:
	cd /home/worker/webserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/worker/webserver /home/worker/webserver/server/log /home/worker/webserver/build /home/worker/webserver/build/server/log /home/worker/webserver/build/server/log/CMakeFiles/log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/log/CMakeFiles/log.dir/depend

