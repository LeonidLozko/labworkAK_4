cmake_minimum_required(VERSION 2.8)
project(labwork4)

add_library(functions STATIC factorial.cpp hello.cpp)
add_executable(main main.cpp)

target_link_libraries(main functions)
