# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-src"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-build"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/tmp"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/src/yaml-cpp-populate-stamp"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/src"
  "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/src/yaml-cpp-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/src/yaml-cpp-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/+Projects/raylib_empty_project/build/_deps/yaml-cpp-subbuild/yaml-cpp-populate-prefix/src/yaml-cpp-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
