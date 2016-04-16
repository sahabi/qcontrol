#!/usr/bin/env python
import sys
import rospy
from quad_control.srv import *

def get_traj(init_pos,final_pos,init_vel,final_vel,init_acc,final_acc,init_time,final_time,sampling_rate):
    rospy.wait_for_service('get_trajectory')
    try:
        traj_srv = rospy.ServiceProxy('get_trajectory', Traj)
        resp1 = traj_srv(init_pos,final_pos,init_vel,final_vel,init_acc,final_acc,init_time,final_time,sampling_rate)
        return resp1.trajectory
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":
	print get_traj(0, 1, 0, 0, 0, 0, 0, 1, 0.01)