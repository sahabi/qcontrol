#include "ros/ros.h"
#include "beginner_tutorials/Traj.h"
#include <cstdlib>

beginner_tutorials::trajData[] get_traj(float init_pos,float final_pos,float init_vel,float final_vel,float init_acc,float final_acc,float init_time,float final_time,float sampling_rate)
{
  ros::NodeHandle n;
  ros::ServiceClient traj_client = n.serviceClient<beginner_tutorials::Traj>("get_trajectory");
  beginner_tutorials::Traj traj_srv;
  
  traj_srv.request.init_pos = init_pos;
  traj_srv.request.final_pos = final_pos;
  traj_srv.request.init_vel = init_vel;
  traj_srv.request.final_vel = final_vel;
  traj_srv.request.init_acc = init_acc;
  traj_srv.request.final_acc = final_acc;
  traj_srv.request.init_time = init_time;
  traj_srv.request.final_time = final_time;
  traj_srv.request.sampling_rate = sampling_rate;
  
  if (traj_client.call(traj_srv))
  {
    
    ROS_INFO("Trajectory:");
    int length_vec = (traj_srv.request.final_time - traj_srv.request.init_time) / traj_srv.request.sampling_rate + 1;
    
    for (int i = 0; i < length_vec; i++)
    {
    ROS_INFO("Time: %f Position: %f Velocity: %f Acceleration: %f\n",(float)traj_srv.response.trajectory[i].time,(float)traj_srv.response.trajectory[i].position,(float)traj_srv.response.trajectory[i].velocity,(float)traj_srv.response.trajectory[i].acceleration);
    }

    return traj_srv.response.trajectory
  }
  
  else
  {
    ROS_ERROR("Failed to call service get_trajectory");
    return traj_srv.response.trajectory;
  }  
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "quad_client");

  
  beginner_tutorials::trajData[] trajectory = get_traj(0 1 0 0 0 0 0 1 0.01);

  return 0;
}
