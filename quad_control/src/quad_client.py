#!/usr/bin/env python
import sys
import rospy
from quad_control.srv import *
from gr1controller5 import Ctrl
import time
import re
from quad_control.msg import Twist
from quad_control.msg import TrajArray
from quad_control.msg import Vector3
from quad_control.msg import Point
from quad_control.msg import Pose

M1 = Ctrl()
x = 5
y = 5

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
    position = position
    return position

def state2vicon(position):
    position = Point()
    position.x = 0
    position.y = 0
    position.z = 0
    return position

def get_vicon(id):
    try:
        current_position = next_position
    except NameError:
        current_position = 1
    return current_position

def conv_1d_2d(traj_1d, next_position,current_position):
    trajlist = TrajArray()
    direction = get_direction(next_position,current_position)
    for i in range(0,len(traj_1d)):
        twist = Twist()
        velocity = traj_1d[i].velocity
        accel = traj_1d[i].acceleration
        acc_vec = Point()
        time = traj_1d[i].time
        position = traj_1d[i].position
        position2d = Pose()
        if direction == 0:
            twist.linear.y = 0
            twist.linear.x = 0           
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.x = 0
            acc_vec.y = 0
            acc_vec.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 1:
            twist.linear.y = velocity
            twist.linear.x = 0          
            twist.angular.x = 0
            twist.angular.y = 0 
            twist.angular.z = 0
            acc_vec.x = 0
            acc_vec.y = accel
            acc_vec.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = (state2vicon(next_position).y - state2vicon(current_position).y)*position + state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 2:
            twist.linear.y = 0
            twist.linear.x = velocity          
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.x = accel
            acc_vec.y = 0
            acc_vec.z = 0
            position2d.position.x = (state2vicon(next_position).x - state2vicon(current_position).x)*position + state2vicon(current_position).x
            position2d.position.y = state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 3:
            twist.linear.y = -velocity
            twist.linear.z = 0
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.x = 0
            acc_vec.y = -accel
            acc_vec.z = 0
            position2d.position.x = state2vicon(current_position).x
            position2d.position.y = (state2vicon(next_position).y - state2vicon(current_position).y)*position + state2vicon(current_position).y
            position2d.position.z = state2vicon(current_position).z
        elif direction == 4:
            twist.linear.y = 0
            twist.linear.x = -velocity
            twist.angular.x = 0
            twist.angular.y = 0
            twist.angular.z = 0
            acc_vec.x = -accel
            acc_vec.y = 0
            acc_vec.z = 0
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
    sampling_rate = 0.01
    init_pos = 0
    final_pos = 1
    init_vel = 0
    final_vel = 0
    init_acc = 0
    final_acc = 0
    init_time = 0
    final_time = 1
    traj_1d = get_traj(init_pos, final_pos, init_vel, final_vel, init_acc, final_acc, init_time, final_time, sampling_rate)
    while True:
        current_position = get_vicon(id)
        current_position = vicon2state(current_position)
        next_position = get_reactive_ctrl()
        traj_2d = conv_1d_2d(traj_1d, next_position,current_position)
        print traj_2d

#float32 time
#float32 position
#float32 velocity
#float32 acceleration
# publish to cmd_vel
#p = rospy.Publisher('cmd_vel', Twist)
# create a twist message, fill in the details
#twist = Twist()
#twist.linear.x = x_speed;                   # our forward speed
#twist.linear.y = 0; twist.linear.z = 0;     # we can't use these!        
#twist.angular.x = 0; twist.angular.y = 0;   #          or these!
#twist.angular.z = 0;                        # no rotation
# announce move, and publish the message
#rospy.loginfo("About to be moving forward!")
#for i in range(30):
#    p.publish(twist)
#    rospy.sleep(0.1) # 30*0.1 = 3.0
# create a new message
#twist = Twist()
# note: everything defaults to 0 in twist, if we don't fill it in, we stop!
#rospy.loginfo("Stopping!")
#p.publish(twist)
