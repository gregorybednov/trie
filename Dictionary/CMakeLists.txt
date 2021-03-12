cmake_minimum_required(VERSION 3.16)
project(Dictionary C)

set(CMAKE_C_STANDARD 90)

add_library(Dictionary library.c library.h)