cmake_minimum_required (VERSION 2.8)
project (zerotiercore)

set (PROJ_DIR ${PROJECT_SOURCE_DIR})
set (ZT_DEFS -std=c++11)

file(GLOB core_src_glob ${PROJ_DIR}/node/*.cpp)
add_library(zerotiercore STATIC ${core_src_glob})

target_compile_options(zerotiercore PRIVATE ${ZT_DEFS})

set(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR mips)

set(CMAKE_C_COMPILER /usr/bin/mipsel-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/mipsel-linux-gnu-g++)

set(CMAKE_CXX_FLAGS "-std=c++11 -DTEST -pthread -Wall -O0 -g3 -Wall  -fmessage-length=0 -fPIC -march=1004kc -EL")
set(CMAKE_C_FLAGS "-std=c99 -Wall -O0 -g3 -Wall -fmessage-length=0 -march=1004kc -EL")
