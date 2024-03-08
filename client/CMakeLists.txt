cmake_minimum_required(VERSION 3.10)

project(dongmin_client)

add_library(${PROJECT_NAME} 
SHARED
client.cpp)

target_include_directories(${PROJECT_NAME} 
    PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}

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
