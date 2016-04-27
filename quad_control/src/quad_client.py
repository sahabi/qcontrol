#!/usr/bin/env python
import sys
import rospy
from quad_control.srv import *
from gr1controller5 import Ctrl
import time
import re
from geometry_msgs.msg import Wrench
from geometry_msgs.msg import Twist
from quad_control.msg import TrajArray
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Point
from geometry_msgs.msg import Pose
from time import sleep

M1 = Ctrl()
rospy.init_node('quad_client', anonymous=True)
pub = rospy.Publisher('cmd', TrajArray, queue_size=10)
# size of grid
x = 5
y = 5

# distance between adjacent centers in meters
blocklength = 0.5

# the point of origin. if block length is 2 bas = (0,0) then cell 0 is (1,1).
base = Point()
base.y = 0
base.x = 0

def talker(traj_2d):
    rospy.loginfo(traj_2d)
    pub.publish(traj_2d)

def get_direction(next_position,current_position):
    if next_position - current_position == x:
        direction = 1
    elif next_position - current_position == 1:
        direction = 2
    elif next_position - current_position == -x:
        direction = 3
    elif next_position - current_position == -1:
        direction = 4
    elif next_position - current_position == 0:
        direction = 0
    else:
        print "Error"
    return direction

def vicon2state(position):
    global base
    position.y = abs(int(position.y - base.x))/blocklength
    position.x = abs(int(position.x - base.y))/blocklength
    state = position.x + (position.y*x)
    return state

def state2vicon(state):

    global base
    xaxis = state % x
    yaxis = state / x
    position = Point()
    position.x = base.x + (blocklength/2.) + (xaxis * blocklength ) 
    position.y = base.y + (blocklength/2.) + (yaxis * blocklength ) 
    position.z = 0
    return position


def get_vicon(id):
    current_position = Point()
    # the rest of the function to be replaced to get live data from vicon
    try:
        current_position = state2vicon(next_position)
    except NameError:
        current_position = state2vicon(0)
    return current_position

def conv_1d_2d(traj_1d, next_position,current_position):
    trajlist = TrajArray()
    direction = get_direction(next_position,current_position)
    for i in range(0,len(traj_1d)):
        twist = Twist()
        velocity = traj_1d[i].velocity
        accel = traj_1d[i].acceleration
        acc_vec = Wrench()
        time = traj_1d[i].time
        position = traj_1d[i].position
        position2d = Pose()
        if direction == 0:
            twist.linear.y = 0
            twist.linear.x = 0           
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.force.x = 0
            acc_vec.force.y = 0
            acc_vec.force.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 1:
            twist.linear.y = velocity
            twist.linear.x = 0          
            twist.angular.x = 0
            twist.angular.y = 0 
            twist.angular.z = 0
            acc_vec.force.x = 0
            acc_vec.force.y = accel
            acc_vec.force.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = (state2vicon(next_position).y - state2vicon(current_position).y)*position + state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 2:
            twist.linear.y = 0
            twist.linear.x = velocity          
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.force.x = accel
            acc_vec.force.y = 0
            acc_vec.force.z = 0
            position2d.position.x = (state2vicon(next_position).x - state2vicon(current_position).x)*position + state2vicon(current_position).x
            position2d.position.y = state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 3:
            twist.linear.y = -velocity
            twist.linear.z = 0
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.force.x = 0
            acc_vec.force.y = -accel
            acc_vec.force.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = (state2vicon(next_position).y - state2vicon(current_position).y)*position + state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 4:
            twist.linear.y = 0
            twist.linear.x = -velocity
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.force.x = -accel
            acc_vec.force.y = 0
            acc_vec.force.z = 0
            position2d.position.x = (state2vicon(next_position).x - state2vicon(current_position).x)*position + state2vicon(current_position).x
            position2d.position.y = state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z

        trajlist.time.append(time)
        trajlist.velocity.append(twist)
        trajlist.acceleration.append(acc_vec)
        trajlist.position.append(position2d)
    return trajlist

def get_reactive_ctrl():
    reactive_output = M1.move()
    for key, val in reactive_output.iteritems():
        if val == 1 and key !='stage':
            next_position = int(key[2:len(key)])

    return next_position

def get_traj(init_pos,final_pos,init_vel,final_vel,init_acc,final_acc,init_time,final_time,sampling_rate):
    rospy.wait_for_service('get_trajectory')
    try:
        traj_srv = rospy.ServiceProxy('get_trajectory', Traj)
        resp1 = traj_srv(init_pos,final_pos,init_vel,final_vel,init_acc,final_acc,init_time,final_time,sampling_rate)
        return resp1.trajectory
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":
    sampling_rate = 0.1
    init_pos = 0
    final_pos = 1
    init_vel = 0
    final_vel = 0
    init_acc = 0
    final_acc = 0
    init_time = 0
    final_time = 1
    current_position = init_pos
    next_position = current_position
    while True:
        current_position = get_vicon(id)
        current_position = vicon2state(current_position)
        if next_position == current_position:
            next_position = get_reactive_ctrl()
            traj_1d = get_traj(init_pos, final_pos, init_vel, final_vel, init_acc, final_acc, init_time, final_time, sampling_rate)
            traj_2d = conv_1d_2d(traj_1d, next_position,current_position)
            try:
                talker(traj_2d)
            except rospy.ROSInterruptException:
                pass