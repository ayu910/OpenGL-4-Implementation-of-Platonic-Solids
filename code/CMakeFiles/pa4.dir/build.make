# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ayu/Desktop/LearnOpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayu/Desktop/LearnOpenGL

# Include any dependencies generated for this target.
include CMakeFiles/pa4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pa4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pa4.dir/flags.make

CMakeFiles/pa4.dir/src/glad/glad.c.o: CMakeFiles/pa4.dir/flags.make
CMakeFiles/pa4.dir/src/glad/glad.c.o: src/glad/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayu/Desktop/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pa4.dir/src/glad/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pa4.dir/src/glad/glad.c.o   -c /home/ayu/Desktop/LearnOpenGL/src/glad/glad.c

CMakeFiles/pa4.dir/src/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pa4.dir/src/glad/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ayu/Desktop/LearnOpenGL/src/glad/glad.c > CMakeFiles/pa4.dir/src/glad/glad.c.i

CMakeFiles/pa4.dir/src/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pa4.dir/src/glad/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ayu/Desktop/LearnOpenGL/src/glad/glad.c -o CMakeFiles/pa4.dir/src/glad/glad.c.s

CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o: CMakeFiles/pa4.dir/flags.make
CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o: src/learnopengl/pa4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayu/Desktop/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o -c /home/ayu/Desktop/LearnOpenGL/src/learnopengl/pa4.cpp

CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ayu/Desktop/LearnOpenGL/src/learnopengl/pa4.cpp > CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.i

CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ayu/Desktop/LearnOpenGL/src/learnopengl/pa4.cpp -o CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.s

# Object files for target pa4
pa4_OBJECTS = \
"CMakeFiles/pa4.dir/src/glad/glad.c.o" \
"CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o"

# External object files for target pa4
pa4_EXTERNAL_OBJECTS =

pa4: CMakeFiles/pa4.dir/src/glad/glad.c.o
pa4: CMakeFiles/pa4.dir/src/learnopengl/pa4.cpp.o
pa4: CMakeFiles/pa4.dir/build.make
pa4: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libGLEW.so
pa4: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
pa4: /usr/lib/x86_64-linux-gnu/libOpenGL.so
pa4: /usr/lib/x86_64-linux-gnu/libGLU.so
pa4: /usr/lib/x86_64-linux-gnu/libGLX.so
pa4: /usr/lib/x86_64-linux-gnu/libEGL.so
pa4: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
pa4: /usr/lib/x86_64-linux-gnu/libGLX.so
pa4: /usr/lib/x86_64-linux-gnu/libOpenGL.so
pa4: CMakeFiles/pa4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ayu/Desktop/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable pa4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pa4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pa4.dir/build: pa4

.PHONY : CMakeFiles/pa4.dir/build

CMakeFiles/pa4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pa4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pa4.dir/clean

CMakeFiles/pa4.dir/depend:
	cd /home/ayu/Desktop/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayu/Desktop/LearnOpenGL /home/ayu/Desktop/LearnOpenGL /home/ayu/Desktop/LearnOpenGL /home/ayu/Desktop/LearnOpenGL /home/ayu/Desktop/LearnOpenGL/CMakeFiles/pa4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pa4.dir/depend

