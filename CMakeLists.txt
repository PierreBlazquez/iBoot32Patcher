cmake_minimum_required(VERSION 3.4)
project(iBoot32Patcher C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED On)
set(CMAKE_CXX_EXTENSIONS On)

add_library(iBoot32Patcher lib.c finders.c functions.c patchers.c)
target_compile_options(iBoot32Patcher PRIVATE -Wall -Wextra -Wno-multichar -Wno-sign-compare)
target_include_directories(iBoot32Patcher PUBLIC ${CMAKE_SOURCE_DIR}/include)
set_target_properties(iBoot32Patcher PROPERTIES
	PUBLIC_HEADER include/iBoot32Patcher/iBoot32Patcher.h)

install(TARGETS iBoot32Patcher
	ARCHIVE DESTINATION lib
	LIBRARY DESTINATION lib
	INCLUDES DESTINATION include/iBoot32Patcher
	PUBLIC_HEADER DESTINATION include/iBoot32Patcher
)

add_executable(iBoot32Patcher-bin iBoot32Patcher.c)
target_link_libraries(iBoot32Patcher-bin iBoot32Patcher)
target_compile_options(iBoot32Patcher-bin PRIVATE -Wall -Wextra -Wno-multichar -Wno-sign-compare)
target_include_directories(iBoot32Patcher-bin PRIVATE ${CMAKE_SOURCE_DIR}/include)
set_target_properties(iBoot32Patcher-bin PROPERTIES
	OUTPUT_NAME iBoot32Patcher)

install(TARGETS iBoot32Patcher-bin
	RUNTIME DESTINATION bin
)
