cmake_minimum_required(VERSION 3.10)

project(dongmin_server)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_C_STANDARD_REQUIRED TRUE)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_library(${PROJECT_NAME} 
SHARED
    server.cpp
)

target_include_directories(${PROJECT_NAME} 
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
    *.h
)

target_link_libraries(${PROJECT_NAME} 
    pthread
    )

set(CMAKE_BUILD_TYPE Debug)

target_compile_options(${PROJECT_NAME} 
    PRIVATE
    -g -Wall -Wextra -Werror
    -Wno-error=missing-field-initializers
    -Wno-error=write-strings
    PUBLIC
    -D_FILE_OFFSET_BITS=64
)
