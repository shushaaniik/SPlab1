cmake_minimum_required(VERSION 3.22.1)

include_directories(include source)

add_executable(MyExec
  source/main.cpp
  source/fun.cpp
  include/fun.h
)

project(hello)

include_directories(${PROJECT_SOURCE_DIR})
add_executable(hello source/main.cpp ./source/fun.cpp)
