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
CMAKE_SOURCE_DIR = /home/ayu/Desktop/113263475_pa4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayu/Desktop/113263475_pa4

# Include any dependencies generated for this target.
include CMakeFiles/shaded_dodecahedron.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shaded_dodecahedron.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shaded_dodecahedron.dir/flags.make

CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o: CMakeFiles/shaded_dodecahedron.dir/flags.make
CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o: src/glad/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayu/Desktop/113263475_pa4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o   -c /home/ayu/Desktop/113263475_pa4/src/glad/glad.c

CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ayu/Desktop/113263475_pa4/src/glad/glad.c > CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.i

CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ayu/Desktop/113263475_pa4/src/glad/glad.c -o CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.s

CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o: CMakeFiles/shaded_dodecahedron.dir/flags.make
CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o: src/pa4/shaded_dodecahedron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayu/Desktop/113263475_pa4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o -c /home/ayu/Desktop/113263475_pa4/src/pa4/shaded_dodecahedron.cpp

CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ayu/Desktop/113263475_pa4/src/pa4/shaded_dodecahedron.cpp > CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.i

CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ayu/Desktop/113263475_pa4/src/pa4/shaded_dodecahedron.cpp -o CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.s

# Object files for target shaded_dodecahedron
shaded_dodecahedron_OBJECTS = \
"CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o" \
"CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o"

# External object files for target shaded_dodecahedron
shaded_dodecahedron_EXTERNAL_OBJECTS =

shaded_dodecahedron: CMakeFiles/shaded_dodecahedron.dir/src/glad/glad.c.o
shaded_dodecahedron: CMakeFiles/shaded_dodecahedron.dir/src/pa4/shaded_dodecahedron.cpp.o
shaded_dodecahedron: CMakeFiles/shaded_dodecahedron.dir/build.make
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libGLEW.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libOpenGL.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libGLU.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libGLX.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libEGL.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libGLX.so
shaded_dodecahedron: /usr/lib/x86_64-linux-gnu/libOpenGL.so
shaded_dodecahedron: CMakeFiles/shaded_dodecahedron.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ayu/Desktop/113263475_pa4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable shaded_dodecahedron"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shaded_dodecahedron.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shaded_dodecahedron.dir/build: shaded_dodecahedron

.PHONY : CMakeFiles/shaded_dodecahedron.dir/build

CMakeFiles/shaded_dodecahedron.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shaded_dodecahedron.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shaded_dodecahedron.dir/clean

CMakeFiles/shaded_dodecahedron.dir/depend:
	cd /home/ayu/Desktop/113263475_pa4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayu/Desktop/113263475_pa4 /home/ayu/Desktop/113263475_pa4 /home/ayu/Desktop/113263475_pa4 /home/ayu/Desktop/113263475_pa4 /home/ayu/Desktop/113263475_pa4/CMakeFiles/shaded_dodecahedron.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shaded_dodecahedron.dir/depend

