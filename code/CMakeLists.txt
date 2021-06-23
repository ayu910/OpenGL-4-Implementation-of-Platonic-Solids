cmake_minimum_required(VERSION 3.16)
project(LearnOpenGL)
set(CMAKE_CXX_STANDARD 17)

# packages to find

find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)
find_package(OpenCV REQUIRED)
find_package(OpenGL REQUIRED)

# all sources

set(ALL_INCLUDE_DIRS
        ${GLEW_INCLUDE_DIRS}
        ${OPENCV_INCLUDE_DIR}
        ${OPENGL_INCLUDE_DIR}
        ${OPENGL_EGL_INCLUDE_DIRS}
        include
        )

set(ALL_LIBRARIES
        ${OpenCV_LIBS}
        dl
        GLEW::GLEW
        glfw
        OpenGL::GL
        OpenGL::OpenGL
        OpenGL::GLU
        OpenGL::GLX
        OpenGL::EGL
        pthread
        )

# all definitions and options

set(ALL_COMPILE_DEFS

        )

set(ALL_COMPILE_OPTS

        )

# executable target(s)

add_executable(wired_tetrahedron
        src/glad/glad.c
        src/pa4/wired_tetrahedron.cpp
        )
target_compile_definitions(wired_tetrahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_tetrahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_tetrahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_tetrahedron ${ALL_LIBRARIES})


add_executable(wired_cube
        src/glad/glad.c
        src/pa4/wired_cube.cpp
        )
target_compile_definitions(wired_cube PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_cube PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_cube PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_cube ${ALL_LIBRARIES})


add_executable(wired_octahedron
        src/glad/glad.c
        src/pa4/wired_octahedron.cpp
        )
target_compile_definitions(wired_octahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_octahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_octahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_octahedron ${ALL_LIBRARIES})




add_executable(shaded_tetrahedron
        src/glad/glad.c
        src/pa4/shaded_tetrahedron.cpp
        )
target_compile_definitions(shaded_tetrahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_tetrahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_tetrahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_tetrahedron ${ALL_LIBRARIES})


add_executable(shaded_cube
        src/glad/glad.c
        src/pa4/shaded_cube.cpp
        )
target_compile_definitions(shaded_cube PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_cube PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_cube PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_cube ${ALL_LIBRARIES})


add_executable(shaded_octahedron
        src/glad/glad.c
        src/pa4/shaded_octahedron.cpp
        )
target_compile_definitions(shaded_octahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_octahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_octahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_octahedron ${ALL_LIBRARIES})

add_executable(shaded_ellipse
        src/glad/glad.c
        src/pa4/shaded_ellipse.cpp
        )
target_compile_definitions(shaded_ellipse PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_ellipse PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_ellipse PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_ellipse ${ALL_LIBRARIES})


add_executable(shaded_sphere
        src/glad/glad.c
        src/pa4/shaded_sphere.cpp
        )
target_compile_definitions(shaded_sphere PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_sphere PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_sphere PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_sphere ${ALL_LIBRARIES})


add_executable(wired_ellipse
        src/glad/glad.c
        src/pa4/wired_ellipse.cpp
        )
target_compile_definitions(wired_ellipse PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_ellipse PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_ellipse PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_ellipse ${ALL_LIBRARIES})


add_executable(wired_sphere
        src/glad/glad.c
        src/pa4/wired_sphere.cpp
        )
target_compile_definitions(wired_sphere PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_sphere PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_sphere PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_sphere ${ALL_LIBRARIES})




add_executable(rgb_shaded_ellipse
        src/glad/glad.c
        src/pa4/rgb_shaded_ellipse.cpp
        )
target_compile_definitions(rgb_shaded_ellipse PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_ellipse PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_ellipse PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_ellipse ${ALL_LIBRARIES})


add_executable(rgb_shaded_sphere
        src/glad/glad.c
        src/pa4/rgb_shaded_sphere.cpp
        )
target_compile_definitions(rgb_shaded_sphere PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_sphere PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_sphere PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_sphere ${ALL_LIBRARIES})


add_executable(rgb_shaded_tetrahedron
        src/glad/glad.c
        src/pa4/rgb_shaded_tetrahedron.cpp
        )
target_compile_definitions(rgb_shaded_tetrahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_tetrahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_tetrahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_tetrahedron ${ALL_LIBRARIES})


add_executable(rgb_shaded_cube
        src/glad/glad.c
        src/pa4/rgb_shaded_cube.cpp
        )
target_compile_definitions(rgb_shaded_cube PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_cube PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_cube PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_cube ${ALL_LIBRARIES})


add_executable(rgb_shaded_octahedron
        src/glad/glad.c
        src/pa4/rgb_shaded_octahedron.cpp
        )
target_compile_definitions(rgb_shaded_octahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_octahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_octahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_octahedron ${ALL_LIBRARIES})

add_executable(rgb_shaded_dodecahedron
        src/glad/glad.c
        src/pa4/rgb_shaded_dodecahedron.cpp
        )
target_compile_definitions(rgb_shaded_dodecahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_dodecahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_dodecahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_dodecahedron ${ALL_LIBRARIES})



add_executable(shaded_dodecahedron
        src/glad/glad.c
        src/pa4/shaded_dodecahedron.cpp
        )
target_compile_definitions(shaded_dodecahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_dodecahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_dodecahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_dodecahedron ${ALL_LIBRARIES})




add_executable(wired_dodecahedron
        src/glad/glad.c
        src/pa4/wired_dodecahedron.cpp
        )
target_compile_definitions(wired_dodecahedron PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_dodecahedron PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_dodecahedron PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_dodecahedron ${ALL_LIBRARIES})



add_executable(wired_torus
        src/glad/glad.c
        src/pa4/wired_torus.cpp
        )
target_compile_definitions(wired_torus PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(wired_torus PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(wired_torus PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(wired_torus ${ALL_LIBRARIES})



add_executable(shaded_torus
        src/glad/glad.c
        src/pa4/shaded_torus.cpp
        )
target_compile_definitions(shaded_torus PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(shaded_torus PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(shaded_torus PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(shaded_torus ${ALL_LIBRARIES})


add_executable(rgb_shaded_torus
        src/glad/glad.c
        src/pa4/rgb_shaded_torus.cpp
        )
target_compile_definitions(rgb_shaded_torus PUBLIC ${ALL_COMPILE_DEFS})
target_compile_options(rgb_shaded_torus PUBLIC ${ALL_COMPILE_OPTS})
target_include_directories(rgb_shaded_torus PUBLIC ${ALL_INCLUDE_DIRS})
target_link_libraries(rgb_shaded_torus ${ALL_LIBRARIES})
