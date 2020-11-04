execute_process(COMMAND "/home/h4k4se/catkin_ws/build/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/h4k4se/catkin_ws/build/mir_robot/mir_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
