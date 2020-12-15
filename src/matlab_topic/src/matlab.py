#!/usr/bin/python   

import rospy
import numpy as np
from geometry_msgs.msg import Pose
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Float64MultiArray

# Node

rospy.init_node('matlab_path', anonymous=True)
path_publisher = rospy.Publisher('/matlab_topic', Float32MultiArray, queue_size=10)
path_msg = Float32MultiArray()
#path_msg.
path_msg.data = [0.0, 3.0]
"""
path_msg.data = [[2.75414116625081, 2.04761128963112],
                                [2.89518236041524,	3.61823207641913],
                                [5.03080150303697,	6.30976383559748],
                                [4.93753765416243,	7.30776336301881],
                                [5.86937727776949,	8.33166766049375],
                                [11.8932359182601,	10.0929765780663],
                                [13.2824577304770,	12.3308383615348],
                                [16.3616564164733, 14.8233350983323],
                                [16.2075912367160, 17.2198548623449],
                                [17, 17]]

"""

rate = rospy.Rate(10) #10hz

while not rospy.is_shutdown():
    path_publisher.publish(path_msg)
    rospy.sleep(1)


