#!/usr/bin/env bash

# Setup your computer to accept software from packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up your keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Installation
sudo apt update

# Setup Ubuntu
sudo apt install build-essential ubuntu-desktop ca-certificates dkms linux-headers-$(uname -r) -y

## Dependencies for building packages
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-catkin-tools python-wstool -y

## Install Ros
sudo apt install ros-melodic-desktop-full -y

# Sync time
sudo timedatectl set-ntp off
sudo timedatectl set-ntp on

# Environment Setup
echo "source /opt/ros/melodic/setup.bash" >> /home/vagrant/.bashrc
source ~/.bashrc

# Initialize rosdep
sudo -E rosdep init
rosdep update

# Create a ROS workspace
mkdir -p ~/catkin_ws/src
mkdir -p ~/catkin_ws/logs
cd ~/catkin_ws/

catkin build

echo "source ~/catkin_ws/devel/setup.bash" >> /home/vagrant/.bashrc
source ~/.bashrc
