# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/george/CLionProjects/draw_circle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/george/CLionProjects/draw_circle/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/draw_circle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/draw_circle.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/draw_circle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw_circle.dir/flags.make

CMakeFiles/draw_circle.dir/main.cpp.o: CMakeFiles/draw_circle.dir/flags.make
CMakeFiles/draw_circle.dir/main.cpp.o: /home/george/CLionProjects/draw_circle/main.cpp
CMakeFiles/draw_circle.dir/main.cpp.o: CMakeFiles/draw_circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/draw_circle.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/draw_circle.dir/main.cpp.o -MF CMakeFiles/draw_circle.dir/main.cpp.o.d -o CMakeFiles/draw_circle.dir/main.cpp.o -c /home/george/CLionProjects/draw_circle/main.cpp

CMakeFiles/draw_circle.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/draw_circle.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/CLionProjects/draw_circle/main.cpp > CMakeFiles/draw_circle.dir/main.cpp.i

CMakeFiles/draw_circle.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/draw_circle.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/CLionProjects/draw_circle/main.cpp -o CMakeFiles/draw_circle.dir/main.cpp.s

CMakeFiles/draw_circle.dir/glad.c.o: CMakeFiles/draw_circle.dir/flags.make
CMakeFiles/draw_circle.dir/glad.c.o: /home/george/CLionProjects/draw_circle/glad.c
CMakeFiles/draw_circle.dir/glad.c.o: CMakeFiles/draw_circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/draw_circle.dir/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/draw_circle.dir/glad.c.o -MF CMakeFiles/draw_circle.dir/glad.c.o.d -o CMakeFiles/draw_circle.dir/glad.c.o -c /home/george/CLionProjects/draw_circle/glad.c

CMakeFiles/draw_circle.dir/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/draw_circle.dir/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/george/CLionProjects/draw_circle/glad.c > CMakeFiles/draw_circle.dir/glad.c.i

CMakeFiles/draw_circle.dir/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/draw_circle.dir/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/george/CLionProjects/draw_circle/glad.c -o CMakeFiles/draw_circle.dir/glad.c.s

CMakeFiles/draw_circle.dir/Circle.cpp.o: CMakeFiles/draw_circle.dir/flags.make
CMakeFiles/draw_circle.dir/Circle.cpp.o: /home/george/CLionProjects/draw_circle/Circle.cpp
CMakeFiles/draw_circle.dir/Circle.cpp.o: CMakeFiles/draw_circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/draw_circle.dir/Circle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/draw_circle.dir/Circle.cpp.o -MF CMakeFiles/draw_circle.dir/Circle.cpp.o.d -o CMakeFiles/draw_circle.dir/Circle.cpp.o -c /home/george/CLionProjects/draw_circle/Circle.cpp

CMakeFiles/draw_circle.dir/Circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/draw_circle.dir/Circle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/CLionProjects/draw_circle/Circle.cpp > CMakeFiles/draw_circle.dir/Circle.cpp.i

CMakeFiles/draw_circle.dir/Circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/draw_circle.dir/Circle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/CLionProjects/draw_circle/Circle.cpp -o CMakeFiles/draw_circle.dir/Circle.cpp.s

CMakeFiles/draw_circle.dir/Shader.cpp.o: CMakeFiles/draw_circle.dir/flags.make
CMakeFiles/draw_circle.dir/Shader.cpp.o: /home/george/CLionProjects/draw_circle/Shader.cpp
CMakeFiles/draw_circle.dir/Shader.cpp.o: CMakeFiles/draw_circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/draw_circle.dir/Shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/draw_circle.dir/Shader.cpp.o -MF CMakeFiles/draw_circle.dir/Shader.cpp.o.d -o CMakeFiles/draw_circle.dir/Shader.cpp.o -c /home/george/CLionProjects/draw_circle/Shader.cpp

CMakeFiles/draw_circle.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/draw_circle.dir/Shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/CLionProjects/draw_circle/Shader.cpp > CMakeFiles/draw_circle.dir/Shader.cpp.i

CMakeFiles/draw_circle.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/draw_circle.dir/Shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/CLionProjects/draw_circle/Shader.cpp -o CMakeFiles/draw_circle.dir/Shader.cpp.s

CMakeFiles/draw_circle.dir/Display.cpp.o: CMakeFiles/draw_circle.dir/flags.make
CMakeFiles/draw_circle.dir/Display.cpp.o: /home/george/CLionProjects/draw_circle/Display.cpp
CMakeFiles/draw_circle.dir/Display.cpp.o: CMakeFiles/draw_circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/draw_circle.dir/Display.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/draw_circle.dir/Display.cpp.o -MF CMakeFiles/draw_circle.dir/Display.cpp.o.d -o CMakeFiles/draw_circle.dir/Display.cpp.o -c /home/george/CLionProjects/draw_circle/Display.cpp

CMakeFiles/draw_circle.dir/Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/draw_circle.dir/Display.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/CLionProjects/draw_circle/Display.cpp > CMakeFiles/draw_circle.dir/Display.cpp.i

CMakeFiles/draw_circle.dir/Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/draw_circle.dir/Display.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/CLionProjects/draw_circle/Display.cpp -o CMakeFiles/draw_circle.dir/Display.cpp.s

# Object files for target draw_circle
draw_circle_OBJECTS = \
"CMakeFiles/draw_circle.dir/main.cpp.o" \
"CMakeFiles/draw_circle.dir/glad.c.o" \
"CMakeFiles/draw_circle.dir/Circle.cpp.o" \
"CMakeFiles/draw_circle.dir/Shader.cpp.o" \
"CMakeFiles/draw_circle.dir/Display.cpp.o"

# External object files for target draw_circle
draw_circle_EXTERNAL_OBJECTS =

draw_circle: CMakeFiles/draw_circle.dir/main.cpp.o
draw_circle: CMakeFiles/draw_circle.dir/glad.c.o
draw_circle: CMakeFiles/draw_circle.dir/Circle.cpp.o
draw_circle: CMakeFiles/draw_circle.dir/Shader.cpp.o
draw_circle: CMakeFiles/draw_circle.dir/Display.cpp.o
draw_circle: CMakeFiles/draw_circle.dir/build.make
draw_circle: /usr/lib/libglfw.so.3.3
draw_circle: CMakeFiles/draw_circle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable draw_circle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw_circle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw_circle.dir/build: draw_circle
.PHONY : CMakeFiles/draw_circle.dir/build

CMakeFiles/draw_circle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw_circle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw_circle.dir/clean

CMakeFiles/draw_circle.dir/depend:
	cd /home/george/CLionProjects/draw_circle/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/CLionProjects/draw_circle /home/george/CLionProjects/draw_circle /home/george/CLionProjects/draw_circle/cmake-build-debug /home/george/CLionProjects/draw_circle/cmake-build-debug /home/george/CLionProjects/draw_circle/cmake-build-debug/CMakeFiles/draw_circle.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/draw_circle.dir/depend

