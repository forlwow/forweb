# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/webserver/web_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/webserver/web_server/build

# Include any dependencies generated for this target.
include CMakeFiles/web_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/web_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/web_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/web_server.dir/flags.make

CMakeFiles/web_server.dir/server/main.cpp.o: CMakeFiles/web_server.dir/flags.make
CMakeFiles/web_server.dir/server/main.cpp.o: /home/webserver/web_server/server/main.cpp
CMakeFiles/web_server.dir/server/main.cpp.o: CMakeFiles/web_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/webserver/web_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/web_server.dir/server/main.cpp.o"
	/usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/web_server.dir/server/main.cpp.o -MF CMakeFiles/web_server.dir/server/main.cpp.o.d -o CMakeFiles/web_server.dir/server/main.cpp.o -c /home/webserver/web_server/server/main.cpp

CMakeFiles/web_server.dir/server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/web_server.dir/server/main.cpp.i"
	/usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/webserver/web_server/server/main.cpp > CMakeFiles/web_server.dir/server/main.cpp.i

CMakeFiles/web_server.dir/server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/web_server.dir/server/main.cpp.s"
	/usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/webserver/web_server/server/main.cpp -o CMakeFiles/web_server.dir/server/main.cpp.s

# Object files for target web_server
web_server_OBJECTS = \
"CMakeFiles/web_server.dir/server/main.cpp.o"

# External object files for target web_server
web_server_EXTERNAL_OBJECTS =

/home/webserver/web_server/bin/web_server: CMakeFiles/web_server.dir/server/main.cpp.o
/home/webserver/web_server/bin/web_server: CMakeFiles/web_server.dir/build.make
/home/webserver/web_server/bin/web_server: /home/webserver/web_server/lib/liblog.so
/home/webserver/web_server/bin/web_server: /home/webserver/web_server/lib/libutil.so
/home/webserver/web_server/bin/web_server: /home/webserver/web_server/lib/libethread.so
/home/webserver/web_server/bin/web_server: /home/webserver/web_server/lib/libecoroutine.so
/home/webserver/web_server/bin/web_server: /home/webserver/web_server/lib/libfiber.so
/home/webserver/web_server/bin/web_server: CMakeFiles/web_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/webserver/web_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/webserver/web_server/bin/web_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/web_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/web_server.dir/build: /home/webserver/web_server/bin/web_server
.PHONY : CMakeFiles/web_server.dir/build

CMakeFiles/web_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/web_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/web_server.dir/clean

CMakeFiles/web_server.dir/depend:
	cd /home/webserver/web_server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/webserver/web_server /home/webserver/web_server /home/webserver/web_server/build /home/webserver/web_server/build /home/webserver/web_server/build/CMakeFiles/web_server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/web_server.dir/depend

