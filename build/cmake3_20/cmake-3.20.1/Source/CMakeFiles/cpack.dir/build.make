# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Bootstrap.cmk/cmake

# The command to remove a file.
RM = /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Bootstrap.cmk/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/turquoisekitty/download/cmake3_20/cmake-3.20.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/turquoisekitty/download/cmake3_20/cmake-3.20.1

# Include any dependencies generated for this target.
include Source/CMakeFiles/cpack.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Source/CMakeFiles/cpack.dir/compiler_depend.make

# Include the progress variables for this target.
include Source/CMakeFiles/cpack.dir/progress.make

# Include the compile flags for this target's objects.
include Source/CMakeFiles/cpack.dir/flags.make

Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o: Source/CMakeFiles/cpack.dir/flags.make
Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o: Source/CPack/cpack.cxx
Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o: Source/CMakeFiles/cpack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/turquoisekitty/download/cmake3_20/cmake-3.20.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o"
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o -MF CMakeFiles/cpack.dir/CPack/cpack.cxx.o.d -o CMakeFiles/cpack.dir/CPack/cpack.cxx.o -c /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source/CPack/cpack.cxx

Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpack.dir/CPack/cpack.cxx.i"
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source/CPack/cpack.cxx > CMakeFiles/cpack.dir/CPack/cpack.cxx.i

Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpack.dir/CPack/cpack.cxx.s"
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source/CPack/cpack.cxx -o CMakeFiles/cpack.dir/CPack/cpack.cxx.s

# Object files for target cpack
cpack_OBJECTS = \
"CMakeFiles/cpack.dir/CPack/cpack.cxx.o"

# External object files for target cpack
cpack_EXTERNAL_OBJECTS =

bin/cpack: Source/CMakeFiles/cpack.dir/CPack/cpack.cxx.o
bin/cpack: Source/CMakeFiles/cpack.dir/build.make
bin/cpack: Source/libCPackLib.a
bin/cpack: Source/libCMakeLib.a
bin/cpack: Source/kwsys/libcmsys.a
bin/cpack: Utilities/std/libcmstd.a
bin/cpack: Utilities/cmexpat/libcmexpat.a
bin/cpack: Utilities/cmlibarchive/libarchive/libcmlibarchive.a
bin/cpack: Utilities/cmliblzma/libcmliblzma.a
bin/cpack: Utilities/cmzstd/libcmzstd.a
bin/cpack: Utilities/cmbzip2/libcmbzip2.a
bin/cpack: Utilities/cmcurl/lib/libcmcurl.a
bin/cpack: Utilities/cmzlib/libcmzlib.a
bin/cpack: /usr/lib/x86_64-linux-gnu/libssl.so
bin/cpack: /usr/lib/x86_64-linux-gnu/libcrypto.so
bin/cpack: Utilities/cmnghttp2/libcmnghttp2.a
bin/cpack: Utilities/cmjsoncpp/libcmjsoncpp.a
bin/cpack: Utilities/cmlibuv/libcmlibuv.a
bin/cpack: Utilities/cmlibrhash/libcmlibrhash.a
bin/cpack: Source/CMakeFiles/cpack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/turquoisekitty/download/cmake3_20/cmake-3.20.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/cpack"
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/CMakeFiles/cpack.dir/build: bin/cpack
.PHONY : Source/CMakeFiles/cpack.dir/build

Source/CMakeFiles/cpack.dir/clean:
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source && $(CMAKE_COMMAND) -P CMakeFiles/cpack.dir/cmake_clean.cmake
.PHONY : Source/CMakeFiles/cpack.dir/clean

Source/CMakeFiles/cpack.dir/depend:
	cd /home/turquoisekitty/download/cmake3_20/cmake-3.20.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/turquoisekitty/download/cmake3_20/cmake-3.20.1 /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source /home/turquoisekitty/download/cmake3_20/cmake-3.20.1 /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Source/CMakeFiles/cpack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/CMakeFiles/cpack.dir/depend

