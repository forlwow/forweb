set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
file(GLOB src_files ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

add_library(util SHARED ${src_files})
