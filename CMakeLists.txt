cmake_minimum_required(VERSION 3.27.7)
project(emptyProject LANGUAGES C CXX)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
find_package(raylib 5.5 QUIET)
include(FetchContent)
if(NOT raylib_FOUND)
    FetchContent_Declare(
        raylib
        GIT_REPOSITORY  https://github.com/raysan5/raylib.git
        GIT_TAG 5.5
    )
    FetchContent_MakeAvailable(raylib)
endif()


set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

find_package(yaml-cpp 0.8 QUIET)

if(NOT yaml-cpp_FOUND)
    FetchContent_Declare(
         yaml-cpp
    GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
    GIT_TAG        0.8.0 
    )
    FetchContent_MakeAvailable(yaml-cpp)
endif()

add_executable(emptyProject)

set(HEADERS )
set(SOURCES src/main.cpp)

target_sources(emptyProject
    PUBLIC
        ${HEADERS}
    PRIVATE
        ${SOURCES}
)

target_link_libraries(
    emptyProject
    PRIVATE
    raylib
    yaml-cpp
)

target_include_directories(emptyProject PUBLIC "${raylib_SOURCE_DIR}/src")