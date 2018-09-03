# For building Trinity only.

SET(ASMJIT_DIR          ${TRINITY_REPO_ROOT}/ext/asmjit)
SET(ASMJIT_SOURCE_DIR   ${ASMJIT_DIR}/src/asmjit)

FILE(GLOB_RECURSE asmjit_src ${ASMJIT_SOURCE_DIR}/*.cpp)

ADD_LIBRARY(asmjit INTERFACE)
TARGET_INCLUDE_DIRECTORIES(asmjit INTERFACE ${ASMJIT_SOURCE_DIR})
TARGET_SOURCES(asmjit INTERFACE ${asmjit_src})
TARGET_COMPILE_DEFINITIONS(asmjit INTERFACE -DASMJIT_EMBED -DASMJIT_RELEASE)