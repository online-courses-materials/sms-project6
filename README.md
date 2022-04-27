
![image](https://user-images.githubusercontent.com/8993081/165442199-d3de2746-7f0e-4ea7-a2f7-b9664afa573f.png)

# sms-course-project 6

- Creating the project 5
```bash
ros@ubuntu:~/catkin_ws$ mkdir project6_ws
ros@ubuntu:~/catkin_ws$ cd project6_ws/
ros@ubuntu:~/catkin_ws/project6_ws$ mkdir src
ros@ubuntu:~/catkin_ws/project6_ws$ cd src
os@ubuntu:~/catkin_ws/project6_ws/src$ catkin_create_pkg project6 roscpp
Created file project6/package.xml
Created file project6/CMakeLists.txt
Created folder project6/include/project6
Created folder project6/src
Successfully created files in /home/ros/catkin_ws/project6_ws/src/project6. Please adjust the values in package.xml.

ros@ubuntu:~/catkin_ws/project6_ws/src$ sudo snap install --classic code
code dfd34e82 from Visual Studio Code (vscode✓) installed

ros@ubuntu:~/catkin_ws/project6_ws/src$mkdir launch
---------------------------------------------------------------
UPDATE src FOLDER CPP CODES (launch files in launch folder & speed_calc.cpp & rpm_pub.cpp) AND C_MAKE FILE (add target information for building speed_calc & rpm_pub objects )
---------------------------------------------------------------
ros@ubuntu:~/catkin_ws/project6_ws/src$ cd ..
ros@ubuntu:~/catkin_ws/project6_ws$ catkin_make
Base path: /home/ros/catkin_ws/project6_ws
Source space: /home/ros/catkin_ws/project6_ws/src
Build space: /home/ros/catkin_ws/project6_ws/build
Devel space: /home/ros/catkin_ws/project6_ws/devel
Install space: /home/ros/catkin_ws/project6_ws/install
####
#### Running command: "make cmake_check_build_system" in "/home/ros/catkin_ws/project6_ws/build"
####
####
#### Running command: "make -j4 -l4" in "/home/ros/catkin_ws/project6_ws/build"
####
[  0%] Built target sensor_msgs_generate_messages_cpp
[  0%] Built target std_msgs_generate_messages_cpp
[  8%] Built target rpm_pub
[ 16%] Built target speed_calc
[ 16%] Built target _project6_generate_messages_check_deps_TurnCamera
[ 16%] Built target _project6_generate_messages_check_deps_OddEvenCheck
[ 16%] Built target sensor_msgs_generate_messages_py
[ 16%] Built target std_msgs_generate_messages_py
[ 16%] Built target std_msgs_generate_messages_lisp
[ 16%] Built target sensor_msgs_generate_messages_lisp
[ 16%] Built target std_msgs_generate_messages_nodejs
[ 16%] Built target sensor_msgs_generate_messages_nodejs
[ 16%] Built target std_msgs_generate_messages_eus
[ 16%] Built target sensor_msgs_generate_messages_eus
[ 25%] Built target project6_generate_messages_cpp
[ 37%] Built target project6_generate_messages_py
[ 45%] Built target project6_generate_messages_lisp
[ 54%] Built target project6_generate_messages_nodejs
[ 66%] Built target project6_generate_messages_eus
[ 75%] Built target turn_camera_service_server
Scanning dependencies of target service_server
[ 83%] Built target service_client
[ 91%] Built target turn_camera_service_client
[ 95%] Building CXX object project6/CMakeFiles/service_server.dir/src/service_server.cpp.o
[ 95%] Built target project6_generate_messages
[100%] Linking CXX executable /home/ros/catkin_ws/project6_ws/devel/lib/project6/service_server
[100%] Built target service_server
ros@ubuntu:~/catkin_ws/project6_ws$ 
```
- Clone the repository 
```bash
ros@ubuntu:~/catkin_ws$ mkdir project6_ws
ros@ubuntu:~/catkin_ws/cd project6_ws
ros@ubuntu:~/catkin_ws/project6_ws$ git clone "https://github.com/online-courses-materials/sms-project6.git"
```

- Restart the roscore in the command line
```bash
ros@ubuntu:~/catkin_ws/project6_ws$ roscore
... logging to /home/ros/.ros/log/6fb97a90-c5c7-11ec-9d07-fbea174a00ed/roslaunch-ubuntu-4330.log
Checking log directory for disk usage. This may take a while.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://ubuntu:43471/
ros_comm version 1.15.14


SUMMARY
========

PARAMETERS
 * /rosdistro: noetic
 * /rosversion: 1.15.14

NODES

auto-starting new master
process[master]: started with pid [4341]
ROS_MASTER_URI=http://ubuntu:11311/

setting /run_id to 6fb97a90-c5c7-11ec-9d07-fbea174a00ed
process[rosout-1]: started with pid [4351]
started core service [/rosout]
```
- Compile the project
```bash
ros@ubuntu:~/catkin_ws/project6_ws$ catkin_make
Base path: /home/ros/catkin_ws/project6_ws
Source space: /home/ros/catkin_ws/project6_ws/src
Build space: /home/ros/catkin_ws/project6_ws/build
Devel space: /home/ros/catkin_ws/project6_ws/devel
Install space: /home/ros/catkin_ws/project6_ws/install
####
#### Running command: "make cmake_check_build_system" in "/home/ros/catkin_ws/project6_ws/build"
####
####
#### Running command: "make -j4 -l4" in "/home/ros/catkin_ws/project6_ws/build"
####
[  0%] Built target sensor_msgs_generate_messages_cpp
[  0%] Built target std_msgs_generate_messages_cpp
[  8%] Built target rpm_pub
[ 16%] Built target speed_calc
[ 16%] Built target _project6_generate_messages_check_deps_TurnCamera
[ 16%] Built target _project6_generate_messages_check_deps_OddEvenCheck
[ 16%] Built target sensor_msgs_generate_messages_py
[ 16%] Built target std_msgs_generate_messages_py
[ 16%] Built target std_msgs_generate_messages_lisp
[ 16%] Built target sensor_msgs_generate_messages_lisp
[ 16%] Built target std_msgs_generate_messages_nodejs
[ 16%] Built target sensor_msgs_generate_messages_nodejs
[ 16%] Built target std_msgs_generate_messages_eus
[ 16%] Built target sensor_msgs_generate_messages_eus
[ 25%] Built target project6_generate_messages_cpp
[ 37%] Built target project6_generate_messages_py
[ 45%] Built target project6_generate_messages_lisp
[ 54%] Built target project6_generate_messages_nodejs
[ 66%] Built target project6_generate_messages_eus
[ 75%] Built target turn_camera_service_server
Scanning dependencies of target service_server
[ 83%] Built target service_client
[ 91%] Built target turn_camera_service_client
[ 95%] Building CXX object project6/CMakeFiles/service_server.dir/src/service_server.cpp.o
[ 95%] Built target project6_generate_messages
[100%] Linking CXX executable /home/ros/catkin_ws/project6_ws/devel/lib/project6/service_server
[100%] Built target service_server
```
- Run the node in the new tab
```bash
ros@ubuntu:~/catkin_ws/project6_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project6_ws$ rossrv list
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
project6/OddEvenCheck          <-----------------------------------------------
project6/TurnCamera             <------------------------------------------------
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

ros@ubuntu:~/catkin_ws/project6_ws$ 

ros@ubuntu:~/catkin_ws/project6_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project6_ws$ rosrun project6 turn_camera_service_server 
/home/ros/catkin_ws/project6_ws/devel/lib/project6/turn_camera_service_server
/home/ros/catkin_ws/project6_ws/
[ INFO] [1651022158.430582235]: Turn Camera Server Running...
/home/ros/catkin_ws/project6_ws/src/project6/images/30.png
/home/ros/catkin_ws/project6_ws/src/project6/images/0.png
/home/ros/catkin_ws/project6_ws/src/project6/images/15.png
/home/ros/catkin_ws/project6_ws/src/project6/images/30.png
/home/ros/catkin_ws/project6_ws/src/project6/images/15.png



```
- Test the service in the new tab
```bash
ros@ubuntu:~/catkin_ws/project6_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project6_ws$ rosrun project6 turn_camera_service_client 
Enter an angle to turn robot camera: 30
Enter an angle to turn robot camera: 5
Enter an angle to turn robot camera: 15
Enter an angle to turn robot camera: 60
Enter an angle to turn robot camera: 9

```
### Demo of this application 
![image](https://user-images.githubusercontent.com/8993081/165443409-f5a85c9d-26a2-4640-acb8-b3455f996908.png)
