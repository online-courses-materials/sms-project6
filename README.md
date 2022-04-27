# sms-course-project 5

- Creating the project 5
```bash
ros@ubuntu:~/catkin_ws$ mkdir project5_ws
ros@ubuntu:~/catkin_ws$ cd project5_ws/
ros@ubuntu:~/catkin_ws/project5_ws$ mkdir src
ros@ubuntu:~/catkin_ws/project5_ws$ cd src
ros@ubuntu:~/catkin_ws/project5_ws/src$ catkin_create_pkg project4 roscpp
Created file project5/package.xml
Created file project5/CMakeLists.txt
Created folder project5/include/project5
Created folder project5/src
Successfully created files in /home/ros/catkin_ws/project5_ws/src/project5. Please adjust the values in package.xml.
ros@ubuntu:~/catkin_ws/project4_ws/src$mkdir launch
---------------------------------------------------------------
UPDATE src FOLDER CPP CODES (launch files in launch folder & speed_calc.cpp & rpm_pub.cpp) AND C_MAKE FILE (add target information for building speed_calc & rpm_pub objects )
---------------------------------------------------------------
ros@ubuntu:~/catkin_ws/project5_ws/src$ cd ..
ros@ubuntu:~/catkin_ws/project5_ws$ catkin_make
Base path: /home/ros/catkin_ws/project5_ws
Source space: /home/ros/catkin_ws/project5_ws/src
Build space: /home/ros/catkin_ws/project5_ws/build
Devel space: /home/ros/catkin_ws/project5_ws/devel
.
.
.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~  traversing 1 packages in topological order:
-- ~~  - project4
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- +++ processing catkin package: 'project5'
-- ==> add_subdirectory(project5)
-- Configuring done
-- Generating done
-- Build files have been written to: /home/ros/catkin_ws/project5_ws/build
####
#### Running command: "make -j4 -l4" in "/home/ros/catkin_ws/project5_ws/build"
####
####
[  0%] Built target std_msgs_generate_messages_cpp
[  0%] Built target sensor_msgs_generate_messages_cpp
[ 13%] Built target speed_calc
[ 26%] Built target rpm_pub
[ 26%] Built target sensor_msgs_generate_messages_lisp
[ 26%] Built target std_msgs_generate_messages_lisp
[ 26%] Built target _project5_generate_messages_check_deps_OddEvenCheck
[ 26%] Built target std_msgs_generate_messages_nodejs
[ 26%] Built target sensor_msgs_generate_messages_nodejs
[ 26%] Built target sensor_msgs_generate_messages_eus
[ 26%] Built target std_msgs_generate_messages_py
[ 26%] Built target std_msgs_generate_messages_eus
[ 26%] Built target sensor_msgs_generate_messages_py
[ 33%] Built target project5_generate_messages_cpp
[ 40%] Built target project5_generate_messages_lisp
[ 46%] Built target project5_generate_messages_nodejs
[ 60%] Built target project5_generate_messages_py
[ 73%] Built target project5_generate_messages_eus
Scanning dependencies of target service_client
Scanning dependencies of target service_server
[ 80%] Building CXX object project5/CMakeFiles/service_client.dir/src/service_client.cpp.o
[ 86%] Building CXX object project5/CMakeFiles/service_server.dir/src/service_server.cpp.o
[ 86%] Built target project5_generate_messages
[ 93%] Linking CXX executable /home/ros/catkin_ws/project5_ws/devel/lib/project5/service_client
[ 93%] Built target service_client
[100%] Linking CXX executable /home/ros/catkin_ws/project5_ws/devel/lib/project5/service_server
[100%] Built target service_server
ros@ubuntu:~/catkin_ws/project5_ws$ 
```
- Clone the repository 
```bash
ros@ubuntu:~/catkin_ws$ mkdir project5_ws
ros@ubuntu:~/catkin_ws/cd project5_ws
ros@ubuntu:~/catkin_ws/project5_ws$ git clone "https://github.com/online-courses-materials/sms-project5.git"
```

- Restart the roscore in the command line
```bash
ros@ubuntu:~/catkin_ws/project5_ws$ roscore
.. logging to /home/ros/.ros/log/2eef3038-b49f-11ec-8a39-8b31e70de496/roslaunch-ubuntu-2895.log
Checking log directory for disk usage. This may take a while.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://ubuntu:36287/
ros_comm version 1.15.13


SUMMARY
========

PARAMETERS
 * /rosdistro: noetic
 * /rosversion: 1.15.13

NODES

auto-starting new master
process[master]: started with pid [2906]
ROS_MASTER_URI=http://ubuntu:11311/

setting /run_id to 2eef3038-b49f-11ec-8a39-8b31e70de496
process[rosout-1]: started with pid [2918]
started core service [/rosout]
```
- Compile the project
```bash
ros@ubuntu:~/catkin_ws/project5_ws$ catkin_make
```
- Run the subscriber node in the new tab
```bash
ros@ubuntu:~/catkin_ws/project5_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project5_ws$ rossrv list
control_msgs/QueryCalibrationState
control_msgs/QueryTrajectoryState
control_toolbox/SetPidGains
controller_manager_msgs/ListControllerTypes
controller_manager_msgs/ListControllers
controller_manager_msgs/LoadController
controller_manager_msgs/ReloadControllerLibraries
controller_manager_msgs/SwitchController
controller_manager_msgs/UnloadController
diagnostic_msgs/AddDiagnostics
diagnostic_msgs/SelfTest
dynamic_reconfigure/Reconfigure
gazebo_msgs/ApplyBodyWrench
gazebo_msgs/ApplyJointEffort
gazebo_msgs/BodyRequest
gazebo_msgs/DeleteLight
gazebo_msgs/DeleteModel
gazebo_msgs/GetJointProperties
gazebo_msgs/GetLightProperties
gazebo_msgs/GetLinkProperties
gazebo_msgs/GetLinkState
gazebo_msgs/GetModelProperties
gazebo_msgs/GetModelState
gazebo_msgs/GetPhysicsProperties
gazebo_msgs/GetWorldProperties
gazebo_msgs/JointRequest
gazebo_msgs/SetJointProperties
gazebo_msgs/SetJointTrajectory
gazebo_msgs/SetLightProperties
gazebo_msgs/SetLinkProperties
gazebo_msgs/SetLinkState
gazebo_msgs/SetModelConfiguration
gazebo_msgs/SetModelState
gazebo_msgs/SetPhysicsProperties
gazebo_msgs/SpawnModel
laser_assembler/AssembleScans
laser_assembler/AssembleScans2
map_msgs/GetMapROI
map_msgs/GetPointMap
map_msgs/GetPointMapROI
map_msgs/ProjectedMapsInfo
map_msgs/SaveMap
map_msgs/SetMapProjections
nav_msgs/GetMap
nav_msgs/GetPlan
nav_msgs/LoadMap
nav_msgs/SetMap
nodelet/NodeletList
nodelet/NodeletLoad
nodelet/NodeletUnload
pcl_msgs/UpdateFilename
polled_camera/GetPolledImage
project5/OddEvenCheck    <-------------------------
roscpp/Empty
roscpp/GetLoggers
roscpp/SetLoggerLevel
roscpp_tutorials/TwoInts
rospy_tutorials/AddTwoInts
rospy_tutorials/BadTwoInts
rviz/SendFilePath
sensor_msgs/SetCameraInfo
std_srvs/Empty
std_srvs/SetBool
std_srvs/Trigger
tf/FrameGraph
tf2_msgs/FrameGraph
topic_tools/DemuxAdd
topic_tools/DemuxDelete
topic_tools/DemuxList
topic_tools/DemuxSelect
topic_tools/MuxAdd
topic_tools/MuxDelete
topic_tools/MuxList
topic_tools/MuxSelect
turtlesim/Kill
turtlesim/SetPen
turtlesim/Spawn
turtlesim/TeleportAbsolute
turtlesim/TeleportRelative
ros@ubuntu:~/catkin_ws/project5_ws$ rosrun project5 service_server 
[ INFO] [1649908854.756021663]: Odd Even Check Server Running...


```
- Test the service in the new tab
```bash
ros@ubuntu:~/catkin_ws/project5_ws$ rosservice list
/odd_even_check
/odd_even_service_server_node/get_loggers
/odd_even_service_server_node/set_logger_level
/rosout/get_loggers
/rosout/set_logger_level
/rostopic_29374_1649833100160/get_loggers
/rostopic_29374_1649833100160/set_logger_level
/rpm_publisher_node1/get_loggers
/rpm_publisher_node1/set_logger_level
/speed_calculator_node1/get_loggers
/speed_calculator_node1/set_logger_level
ros@ubuntu:~/catkin_ws/project5_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project5_ws$ rosservice call /odd_even_check 6
answer: "Even"
ros@ubuntu:~/catkin_ws/project5_ws$ rosservice call /odd_even_check 3
answer: "Odd"
ros@ubuntu:~/catkin_ws/project5_ws$ 
ros@ubuntu:~/catkin_ws/project5_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project5_ws$ rosrun project5 service_client 
Type '0' to quit
Enter a Integer: 1
The number is Odd
Enter a Integer: 4
The number is Even
Enter a Integer: 7
The number is Odd
Enter a Integer: 45
The number is Odd
Enter a Integer: 8
The number is Even
Enter a Integer: 0
[ INFO] [1649909278.857298516]: Exiting Application...
ros@ubuntu:~/catkin_ws/project5_ws$ 

```
