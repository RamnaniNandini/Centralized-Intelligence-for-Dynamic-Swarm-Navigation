#!/bin/bash

# Update package list
sudo apt update

# Install required ROS packages
sudo apt install -y \
    python3-colcon-common-extensions \
    ros-humble-turtlebot3* \
    ros-humble-navigation2 \
    ros-humble-slam-toolbox \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-rviz2

# Install Python packages from requirements.txt
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt not found!"
fi
