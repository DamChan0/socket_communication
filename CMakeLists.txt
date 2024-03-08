cmake_minimum_required(VERSION 3.10)

project(socket)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_EXTENSIONS ON)
set(CMAKE_C_STANDARD_REQUIRED TRUE)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_subdirectory(server)
add_subdirectory(client)

set(SOURCE_FILES )

add_executable(${PROJECT_NAME} 
                main.cpp
)

target_link_libraries(${PROJECT_NAME} 
    pthread
    dongmin_server
    dongmin_client
    )

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
