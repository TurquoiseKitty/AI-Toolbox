# CMake generated Testfile for 
# Source directory: /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Utilities/cmcurl
# Build directory: /home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Utilities/cmcurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(curl "curltest" "http://open.cdash.org/user.php")
set_tests_properties(curl PROPERTIES  _BACKTRACE_TRIPLES "/home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Utilities/cmcurl/CMakeLists.txt;1468;add_test;/home/turquoisekitty/download/cmake3_20/cmake-3.20.1/Utilities/cmcurl/CMakeLists.txt;0;")
subdirs("lib")
