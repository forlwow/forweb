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
include server/util/CMakeFiles/util.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include server/util/CMakeFiles/util.dir/compiler_depend.make

# Include the progress variables for this target.
include server/util/CMakeFiles/util.dir/progress.make

# Include the compile flags for this target's objects.
include server/util/CMakeFiles/util.dir/flags.make

server/util/CMakeFiles/util.dir/src/hook.cpp.o: server/util/CMakeFiles/util.dir/flags.make
server/util/CMakeFiles/util.dir/src/hook.cpp.o: /home/worker/webserver/server/util/src/hook.cpp
server/util/CMakeFiles/util.dir/src/hook.cpp.o: server/util/CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/util/CMakeFiles/util.dir/src/hook.cpp.o"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/util/CMakeFiles/util.dir/src/hook.cpp.o -MF CMakeFiles/util.dir/src/hook.cpp.o.d -o CMakeFiles/util.dir/src/hook.cpp.o -c /home/worker/webserver/server/util/src/hook.cpp

server/util/CMakeFiles/util.dir/src/hook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/src/hook.cpp.i"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/worker/webserver/server/util/src/hook.cpp > CMakeFiles/util.dir/src/hook.cpp.i

server/util/CMakeFiles/util.dir/src/hook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/src/hook.cpp.s"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/worker/webserver/server/util/src/hook.cpp -o CMakeFiles/util.dir/src/hook.cpp.s

server/util/CMakeFiles/util.dir/src/range.cpp.o: server/util/CMakeFiles/util.dir/flags.make
server/util/CMakeFiles/util.dir/src/range.cpp.o: /home/worker/webserver/server/util/src/range.cpp
server/util/CMakeFiles/util.dir/src/range.cpp.o: server/util/CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object server/util/CMakeFiles/util.dir/src/range.cpp.o"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/util/CMakeFiles/util.dir/src/range.cpp.o -MF CMakeFiles/util.dir/src/range.cpp.o.d -o CMakeFiles/util.dir/src/range.cpp.o -c /home/worker/webserver/server/util/src/range.cpp

server/util/CMakeFiles/util.dir/src/range.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/src/range.cpp.i"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/worker/webserver/server/util/src/range.cpp > CMakeFiles/util.dir/src/range.cpp.i

server/util/CMakeFiles/util.dir/src/range.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/src/range.cpp.s"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/worker/webserver/server/util/src/range.cpp -o CMakeFiles/util.dir/src/range.cpp.s

server/util/CMakeFiles/util.dir/src/timer.cpp.o: server/util/CMakeFiles/util.dir/flags.make
server/util/CMakeFiles/util.dir/src/timer.cpp.o: /home/worker/webserver/server/util/src/timer.cpp
server/util/CMakeFiles/util.dir/src/timer.cpp.o: server/util/CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object server/util/CMakeFiles/util.dir/src/timer.cpp.o"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/util/CMakeFiles/util.dir/src/timer.cpp.o -MF CMakeFiles/util.dir/src/timer.cpp.o.d -o CMakeFiles/util.dir/src/timer.cpp.o -c /home/worker/webserver/server/util/src/timer.cpp

server/util/CMakeFiles/util.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/src/timer.cpp.i"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/worker/webserver/server/util/src/timer.cpp > CMakeFiles/util.dir/src/timer.cpp.i

server/util/CMakeFiles/util.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/src/timer.cpp.s"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/worker/webserver/server/util/src/timer.cpp -o CMakeFiles/util.dir/src/timer.cpp.s

server/util/CMakeFiles/util.dir/src/util.cpp.o: server/util/CMakeFiles/util.dir/flags.make
server/util/CMakeFiles/util.dir/src/util.cpp.o: /home/worker/webserver/server/util/src/util.cpp
server/util/CMakeFiles/util.dir/src/util.cpp.o: server/util/CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object server/util/CMakeFiles/util.dir/src/util.cpp.o"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/util/CMakeFiles/util.dir/src/util.cpp.o -MF CMakeFiles/util.dir/src/util.cpp.o.d -o CMakeFiles/util.dir/src/util.cpp.o -c /home/worker/webserver/server/util/src/util.cpp

server/util/CMakeFiles/util.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/src/util.cpp.i"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/worker/webserver/server/util/src/util.cpp > CMakeFiles/util.dir/src/util.cpp.i

server/util/CMakeFiles/util.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/src/util.cpp.s"
	cd /home/worker/webserver/build/server/util && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/worker/webserver/server/util/src/util.cpp -o CMakeFiles/util.dir/src/util.cpp.s

# Object files for target util
util_OBJECTS = \
"CMakeFiles/util.dir/src/hook.cpp.o" \
"CMakeFiles/util.dir/src/range.cpp.o" \
"CMakeFiles/util.dir/src/timer.cpp.o" \
"CMakeFiles/util.dir/src/util.cpp.o"

# External object files for target util
util_EXTERNAL_OBJECTS =

/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/src/hook.cpp.o
/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/src/range.cpp.o
/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/src/timer.cpp.o
/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/src/util.cpp.o
/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/build.make
/home/worker/webserver/lib/libutil.so: server/util/CMakeFiles/util.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/worker/webserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library /home/worker/webserver/lib/libutil.so"
	cd /home/worker/webserver/build/server/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/util.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/util/CMakeFiles/util.dir/build: /home/worker/webserver/lib/libutil.so
.PHONY : server/util/CMakeFiles/util.dir/build

server/util/CMakeFiles/util.dir/clean:
	cd /home/worker/webserver/build/server/util && $(CMAKE_COMMAND) -P CMakeFiles/util.dir/cmake_clean.cmake
.PHONY : server/util/CMakeFiles/util.dir/clean

server/util/CMakeFiles/util.dir/depend:
	cd /home/worker/webserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/worker/webserver /home/worker/webserver/server/util /home/worker/webserver/build /home/worker/webserver/build/server/util /home/worker/webserver/build/server/util/CMakeFiles/util.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/util/CMakeFiles/util.dir/depend

