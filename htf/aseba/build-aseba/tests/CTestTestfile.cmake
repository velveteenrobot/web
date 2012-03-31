# CMake generated Testfile for 
# Source directory: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests
# Build directory: /wg/stor1a/selliott/ros_workspace/web/htf/aseba/build-aseba/tests
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(basic-arithmetic "/asebatest" "--memcmp" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/basic-arithmetic.dump" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/basic-arithmetic.txt")
ADD_TEST(multiple-logic-op "/asebatest" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/multiple-logic-op.txt")
ADD_TEST(unicode "/asebatest" "-d" "-s" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/unicode.txt")
ADD_TEST(division-by-zero-dyn "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/division-by-zero-dyn.txt")
ADD_TEST(division-by-zero-static "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/division-by-zero-static.txt")
ADD_TEST(chained-conditional "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/chained-conditional.txt")
ADD_TEST(implicit-conditional "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/implicit-conditional.txt")
ADD_TEST(array-access-out-of-bounds-dyn-over "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/array-access-out-of-bounds-dyn-over.txt")
ADD_TEST(array-access-out-of-bounds-dyn-under "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/array-access-out-of-bounds-dyn-under.txt")
ADD_TEST(array-access-out-of-bounds-static-over "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/array-access-out-of-bounds-static-over.txt")
ADD_TEST(array-access-out-of-bounds-static-under "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/array-access-out-of-bounds-static-under.txt")
ADD_TEST(assigning-bool "/asebatest" "--fail" "/wg/stor1a/selliott/ros_workspace/web/htf/aseba/aseba/tests/data/assigning-bool.txt")
