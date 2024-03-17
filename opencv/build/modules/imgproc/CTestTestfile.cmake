# CMake generated Testfile for 
# Source directory: C:/Users/nosuc/github/loopycam/opencv/modules/imgproc
# Build directory: C:/Users/nosuc/github/loopycam/opencv/build/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_test_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_test_imgprocd.exe" "--gtest_output=xml:opencv_test_imgproc.xml")
  set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_test_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_test_imgproc.exe" "--gtest_output=xml:opencv_test_imgproc.xml")
  set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1375;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1133;ocv_add_accuracy_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
else()
  add_test(opencv_test_imgproc NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_perf_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_perf_imgprocd.exe" "--gtest_output=xml:opencv_perf_imgproc.xml")
  set_tests_properties(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_perf_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_perf_imgproc.exe" "--gtest_output=xml:opencv_perf_imgproc.xml")
  set_tests_properties(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1274;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
else()
  add_test(opencv_perf_imgproc NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_sanity_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Debug/opencv_perf_imgprocd.exe" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_sanity_imgproc "C:/Users/nosuc/github/loopycam/opencv/build/bin/Release/opencv_perf_imgproc.exe" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "C:/Users/nosuc/github/loopycam/opencv/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVUtils.cmake;1795;add_test;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1275;ocv_add_test_from_target;C:/Users/nosuc/github/loopycam/opencv/cmake/OpenCVModule.cmake;1134;ocv_add_perf_tests;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;13;ocv_define_module;C:/Users/nosuc/github/loopycam/opencv/modules/imgproc/CMakeLists.txt;0;")
else()
  add_test(opencv_sanity_imgproc NOT_AVAILABLE)
endif()
