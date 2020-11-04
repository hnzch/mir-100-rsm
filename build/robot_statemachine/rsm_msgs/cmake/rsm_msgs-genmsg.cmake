# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rsm_msgs: 4 messages, 14 services")

set(MSG_I_FLAGS "-Irsm_msgs:/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rsm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:rsm_msgs/GoalStatus:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" "rsm_msgs/Waypoint:geometry_msgs/Pose:std_msgs/Header:rsm_msgs/WaypointArray:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" ""
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:rsm_msgs/Waypoint:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" "geometry_msgs/Pose:geometry_msgs/Point:rsm_msgs/Waypoint:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" "rsm_msgs/OperationMode"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_custom_target(_rsm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rsm_msgs" "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)

### Generating Services
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_cpp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
)

### Generating Module File
_generate_module_cpp(rsm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rsm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rsm_msgs_generate_messages rsm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_cpp _rsm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rsm_msgs_gencpp)
add_dependencies(rsm_msgs_gencpp rsm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rsm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_msg_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_msg_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_msg_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)

### Generating Services
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)
_generate_srv_eus(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
)

### Generating Module File
_generate_module_eus(rsm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rsm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rsm_msgs_generate_messages rsm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_eus _rsm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rsm_msgs_geneus)
add_dependencies(rsm_msgs_geneus rsm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rsm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_msg_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)

### Generating Services
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)
_generate_srv_lisp(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
)

### Generating Module File
_generate_module_lisp(rsm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rsm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rsm_msgs_generate_messages rsm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_lisp _rsm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rsm_msgs_genlisp)
add_dependencies(rsm_msgs_genlisp rsm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rsm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_msg_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_msg_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_msg_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)

### Generating Services
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)
_generate_srv_nodejs(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
)

### Generating Module File
_generate_module_nodejs(rsm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rsm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rsm_msgs_generate_messages rsm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_nodejs _rsm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rsm_msgs_gennodejs)
add_dependencies(rsm_msgs_gennodejs rsm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rsm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_msg_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_msg_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_msg_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)

### Generating Services
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)
_generate_srv_py(rsm_msgs
  "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
)

### Generating Module File
_generate_module_py(rsm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rsm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rsm_msgs_generate_messages rsm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/MoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GoalCompleted.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointVisited.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointRoutine.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/WaypointUnreachable.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/GoalStatus.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetWaypointFollowingMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetWaypointRoutines.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/WaypointArray.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetOperationMode.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/SetNavigationGoal.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/srv/GetRobotPose.srv" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/h4k4se/catkin_ws/src/robot_statemachine/rsm_msgs/msg/OperationMode.msg" NAME_WE)
add_dependencies(rsm_msgs_generate_messages_py _rsm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rsm_msgs_genpy)
add_dependencies(rsm_msgs_genpy rsm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rsm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rsm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rsm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rsm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rsm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rsm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rsm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rsm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rsm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rsm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rsm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rsm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rsm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rsm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rsm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rsm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
