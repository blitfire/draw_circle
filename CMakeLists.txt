cmake_minimum_required(VERSION 3.28)
project(draw_circle)

set(CMAKE_CXX_STANDARD 17)

add_executable(draw_circle main.cpp glad.c
        Circle.cpp
        Circle.h
        Shader.cpp
        Shader.h
        Display.cpp
        Display.h
        Display.cpp)
find_package(glfw3 REQUIRED)
target_link_libraries(draw_circle glfw)