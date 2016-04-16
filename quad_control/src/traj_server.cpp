#include "ros/ros.h"
#include "quad_control/Traj.h"
#include <stdio.h>
#include <wchar.h>
#include <stdlib.h>
#include <chrono>
#include <iostream>
#include <Eigen/Dense>
using namespace Eigen;
using namespace std::chrono;

void path_planning(float x0, float v0, float a0, float xf, float vf, float af, float t0, float tf, float Ts, double *time, double *pos, double *vel, double *acc)
{
  // Setup and solve linear system
  MatrixXd A(6, 6);
  VectorXd b(6);

  A << 1, t0, pow(t0,2), pow(t0,3),   pow(t0,4),    pow(t0,5),
         0, 1,  2*t0,      3*pow(t0,2), 4*pow(t0,3),  5*pow(t0,4),
       0, 0,  2,         6*t0,        12*pow(t0,2), 20*pow(t0,3),
       1, tf, pow(tf,2), pow(tf,3),   pow(tf,4),    pow(tf,5),
       0, 1,  2*tf,      3*pow(tf,2), 4*pow(tf,3),  5*pow(tf,4),
       0, 0,  2,         6*tf,        12*pow(tf,2), 20*pow(tf,3);

  b << x0, v0, a0, xf, vf, af;

  //VectorXd coeff_vec(6);
  double b0, b1, b2, b3, b4, b5; //Coefficients
  VectorXd coeff_vec = A.colPivHouseholderQr().solve(b);
  b0 = coeff_vec(0); b1 = coeff_vec(1); b2 = coeff_vec(2);
  b3 = coeff_vec(3); b4 = coeff_vec(4); b5 = coeff_vec(5);

  // Get the output vectors
  int length_vec = (tf - t0) / Ts + 1; //Length of output vectors

  //Populate output vector
  for (int i = 0; i < length_vec; i++)
  {
    time[i] = t0 + i*Ts;
    pos[i] = b0 + b1*time[i] + b2*pow(time[i], 2) + b3*pow(time[i], 3) + b4*pow(time[i], 4) + b5*pow(time[i], 5);
    vel[i] = b1 + 2 * b2*time[i] + 3 * b3*pow(time[i], 2) + 4 * b4*pow(time[i], 3) + 5 * b5*pow(time[i], 4);
    acc[i] = 2 * b2 + 6 * b3*time[i] + 12 * b4*pow(time[i], 2) + 20 * b5*pow(time[i], 3);
  }

  return;
}

bool add(quad_control::Traj::Request  &req,
         quad_control::Traj::Response &res)
{
  float t0, tf, Ts, x0, v0, a0, xf, vf, af;
  double *time, *pos, *vel, *acc;  //Create pointers for posterior memory allocation
  //Set inputs
  x0 = req.init_pos; xf = req.final_pos; //Initial and final position
  v0 = req.init_vel; vf = req.final_vel; //Initial and final velocity
  a0 = req.init_acc; af = req.final_acc; //Initial and final acceleration
  t0 = req.init_time;     //Initial time
  tf = req.final_time;     //Final time
  Ts = req.sampling_rate;    //Sampling period
  //Calculate vector length
  int length_vec = (tf - t0) / Ts + 1; //Length of output vectors

  //Allocate memory
  time = (double *)malloc(length_vec*sizeof(double));
  pos = (double *)malloc(length_vec*sizeof(double));
  vel = (double *)malloc(length_vec*sizeof(double));
  acc = (double *)malloc(length_vec*sizeof(double));

  //Call path planning function and print the results

  for (int i = 0; i < 10; i++)
  {
  high_resolution_clock::time_point t1 = high_resolution_clock::now();
  path_planning(x0, v0, a0, xf, vf, af, t0, tf, Ts, time, pos, vel, acc);
  high_resolution_clock::time_point t2 = high_resolution_clock::now();
  auto duration = duration_cast<microseconds>(t2 - t1).count();
  }
  quad_control::trajData data;
  //beginner_tutorials::trajDataArray msg;

  for (int i = 0; i < length_vec; i++)
  {
    data.time = time[i];
    data.position = pos[i];
    data.velocity = vel[i];
    data.acceleration = acc[i];
    res.trajectory.push_back(data);
  }
  //ROS_INFO("request: x=%ld, y=%ld", (long float32)req.a, (long float32)req.b);
  //ROS_INFO("sending back response: [%ld]", (long int)res.sum);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "traj_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("get_trajectory", add);
  ROS_INFO("Ready to provide trajectory.");
  ros::spin();

  return 0;
}