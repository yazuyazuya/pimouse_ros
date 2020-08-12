#!/bin/bash -xve

#required packages
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#pip install catkin_pkg
#pip install empy
#pip install pyyaml
#pip install rospkg

#ros install
cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_server.git
cd ./ros_setup_scripts_Ubuntu18.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/melodic/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
