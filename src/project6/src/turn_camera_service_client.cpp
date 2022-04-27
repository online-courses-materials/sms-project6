#include "ros/ros.h"
#include "project6/TurnCamera.h"

#include <opencv2/core.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui.hpp>
#include <sensor_msgs/image_encodings.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "turn_camera_service_client_node");

  ros::NodeHandle node_handle;

  ros::ServiceClient client = node_handle.serviceClient<project6::TurnCamera>("turn_camera");

  project6::TurnCamera turn_camera_srv;

  float input_num;

  cv_bridge::CvImagePtr cv_ptr;

  while (ros::ok())
  {
    std::cout << "Enter an angle to turn robot camera: ";
    std::cin >> input_num;

  turn_camera_srv.request.deg_turn = input_num;

    if (client.call(turn_camera_srv))
    {
      cv_ptr = cv_bridge::toCvCopy(turn_camera_srv.response.camera_image, sensor_msgs::image_encodings::BGR8);
      cv::imshow("Robot Camera Image", cv_ptr->image);
      cv::waitKey(1000);
    }
    else
    {
      ROS_ERROR("Service Call Failed");
      return 1;
    }

    std::cin.clear();


  }
}
