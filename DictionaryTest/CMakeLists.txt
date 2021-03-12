cmake_minimum_required(VERSION 3.16)
project(DictionaryTest C)

set(CMAKE_C_STANDARD 90)

add_executable(DictionaryTest main.c)
add_library(Dictionary STATIC ../Dictionary/library.h ../Dictionary/library.c)
target_link_libraries(DictionaryTest Dictionary)
