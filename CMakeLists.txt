cmake_minimum_required(VERSION 3.4)
project(iBoot32Patcher C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED On)
set(CMAKE_CXX_EXTENSIONS On)

add_executable(iBoot32Patcher iBoot32Patcher.c lib.c finders.c functions.c patchers.c)
target_compile_options(iBoot32Patcher PRIVATE -Wall -Wextra -Wno-multichar -Wno-sign-compare)
target_include_directories(iBoot32Patcher PRIVATE ${CMAKE_SOURCE_DIR}/include)
