#!/bin/bash -xve

#sync and make
rsync -av --exclude='.git/' ./ ~/catkin_ws/src/pimouse_ros/
cd ~/catkin_ws
catkin_make
