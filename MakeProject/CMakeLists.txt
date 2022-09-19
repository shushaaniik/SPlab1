cmake_minimum_required(VERSION 3.22.1)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_DLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

project(hello)

include_directories(${PROJECT_SOURCE_DIR})
add_executable(hello source/main.cpp ./source/fun.cpp)
