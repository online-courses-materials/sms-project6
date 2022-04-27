# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "project6: 0 messages, 2 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(project6_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_custom_target(_project6_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "project6" "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_custom_target(_project6_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "project6" "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" "std_msgs/Header:sensor_msgs/Image"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/project6
)
_generate_srv_cpp(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/project6
)

### Generating Module File
_generate_module_cpp(project6
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/project6
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(project6_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(project6_generate_messages project6_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(project6_generate_messages_cpp _project6_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_dependencies(project6_generate_messages_cpp _project6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(project6_gencpp)
add_dependencies(project6_gencpp project6_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS project6_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/project6
)
_generate_srv_eus(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/project6
)

### Generating Module File
_generate_module_eus(project6
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/project6
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(project6_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(project6_generate_messages project6_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(project6_generate_messages_eus _project6_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_dependencies(project6_generate_messages_eus _project6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(project6_geneus)
add_dependencies(project6_geneus project6_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS project6_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/project6
)
_generate_srv_lisp(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/project6
)

### Generating Module File
_generate_module_lisp(project6
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/project6
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(project6_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(project6_generate_messages project6_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(project6_generate_messages_lisp _project6_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_dependencies(project6_generate_messages_lisp _project6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(project6_genlisp)
add_dependencies(project6_genlisp project6_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS project6_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/project6
)
_generate_srv_nodejs(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/project6
)

### Generating Module File
_generate_module_nodejs(project6
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/project6
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(project6_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(project6_generate_messages project6_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(project6_generate_messages_nodejs _project6_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_dependencies(project6_generate_messages_nodejs _project6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(project6_gennodejs)
add_dependencies(project6_gennodejs project6_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS project6_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6
)
_generate_srv_py(project6
  "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6
)

### Generating Module File
_generate_module_py(project6
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(project6_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(project6_generate_messages project6_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/OddEvenCheck.srv" NAME_WE)
add_dependencies(project6_generate_messages_py _project6_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/project6_ws/src/project6/srv/TurnCamera.srv" NAME_WE)
add_dependencies(project6_generate_messages_py _project6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(project6_genpy)
add_dependencies(project6_genpy project6_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS project6_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/project6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/project6
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(project6_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(project6_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/project6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/project6
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(project6_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(project6_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/project6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/project6
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(project6_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(project6_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/project6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/project6
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(project6_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(project6_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/project6
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(project6_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(project6_generate_messages_py std_msgs_generate_messages_py)
endif()
