#include "ros/ros.h"
#include "project6/TurnCamera.h"

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>


std::string exe_dir, ws_dir, image_path;

const int AVAILBLE_ANGLES_SIZE = 5;
float availble_angles [AVAILBLE_ANGLES_SIZE] {-30, -15, 0, 15, 30};


bool getCameraImage(project6::TurnCamera::Request &req,
                      project6::TurnCamera::Response &res)
{

  float closest_num = availble_angles[0];
  float smallest_anlge = req.deg_turn - availble_angles[0];
  float angle_diff;

  for (int i=0; i < AVAILBLE_ANGLES_SIZE; i++)
  {
    angle_diff = abs(req.deg_turn - availble_angles[i]);

    if (angle_diff < smallest_anlge)
    {
      smallest_anlge = angle_diff;
      closest_num = availble_angles[i];
    }
  }

  image_path = ws_dir + "src/project6/images/" + std::to_string((int)closest_num) + ".png";

  std::cout << image_path << std::endl;

  cv::Mat image = cv::imread(image_path, 1);

  sensor_msgs::ImagePtr img_ptr = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();

  res.camera_image = *img_ptr;


  return true;
}


int main(int argc, char **argv)
{

  exe_dir = argv[0];

  std::string::size_type substr_index = exe_dir.find("devel");
  ws_dir = exe_dir.substr(0, substr_index);

  std::cout << exe_dir << std::endl;
  std::cout << ws_dir << std::endl;

  ros::init(argc, argv, "turn_camera_service_server_node");

  ros::NodeHandle node_handle;

  ros::ServiceServer service = node_handle.advertiseService("turn_camera", getCameraImage);

  ROS_INFO("Turn Camera Server Running...");

  ros::spin();

  return 0;
}
