cmake_minimum_required(VERSION 3.22.1)

project(hello)

include_directories(include)

add_executable(hello
  source/main.cpp
  source/fun.cpp
)

set(EXECUTABLE_OUTPUT_PATH "${CMAKE_SOURCE_DIR}")
