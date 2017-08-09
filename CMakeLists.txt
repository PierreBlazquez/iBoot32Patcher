cmake_minimum_required(VERSION 3.4)
project(iBoot32Patcher C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED On)
set(CMAKE_CXX_EXTENSIONS On)

add_library(libiBoot32Patcher lib.c finders.c functions.c patchers.c)
target_compile_options(libiBoot32Patcher PRIVATE -Wall -Wextra -Wno-multichar -Wno-sign-compare)
target_include_directories(libiBoot32Patcher PRIVATE ${CMAKE_SOURCE_DIR}/include)

add_executable(iBoot32Patcher iBoot32Patcher.c)
target_link_libraries(iBoot32Patcher libiBoot32Patcher)

target_compile_options(iBoot32Patcher PRIVATE -Wall -Wextra -Wno-multichar -Wno-sign-compare)
target_include_directories(iBoot32Patcher PRIVATE ${CMAKE_SOURCE_DIR}/include)
