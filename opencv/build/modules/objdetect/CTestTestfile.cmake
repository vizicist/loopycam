# CMake generated Testfile for 
# Source directory: C:/Users/nosuc/github/loopycam/opencv/modules/objdetect
# Build directory: C:/Users/nosuc/github/loopycam/opencv/build/modules/objdetect
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_test_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_test_objdetectd.exe" "--gtest_output=xml:opencv_test_objdetect.xml")
  set_tests_properties(opencv_test_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Accuracy" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_test_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_test_objdetect.exe" "--gtest_output=xml:opencv_test_objdetect.xml")
  set_tests_properties(opencv_test_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Accuracy" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
else()
  add_test(opencv_test_objdetect NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_perf_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_perf_objdetectd.exe" "--gtest_output=xml:opencv_perf_objdetect.xml")
  set_tests_properties(opencv_perf_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Performance" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_perf_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_perf_objdetect.exe" "--gtest_output=xml:opencv_perf_objdetect.xml")
  set_tests_properties(opencv_perf_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Performance" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
else()
  add_test(opencv_perf_objdetect NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_sanity_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_perf_objdetectd.exe" "--gtest_output=xml:opencv_perf_objdetect.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Sanity" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_sanity_objdetect "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_perf_objdetect.exe" "--gtest_output=xml:opencv_perf_objdetect.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Sanity" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;2;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/objdetect/CMakeLists.txt;0;")
else()
  add_test(opencv_sanity_objdetect NOT_AVAILABLE)
endif()
