#!/bin/env bash 
#
#
#
###################################################################
#
#
#
#	Author : TEFFU JM 
#	DATE   : 11 Sept 2024
#
#	This script automate the removal of docker engine (ubuntu)
#
#	1.Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages.
#	2.Images, containers, volumes, or custom configuration files on your host aren't automatically removed. To delete all images, containers, and volumes.
#
##############################################################################################################################################################
#
#
 	set -x
echo"Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages:"
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

echo"Images, containers, volumes, or custom configuration files on your host aren't automatically removed. To delete all images, containers, and volumes:"

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
