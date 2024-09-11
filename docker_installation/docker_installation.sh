#!/bin/env bash
#
#
#
#####################################################
#
#
#
#
#	Author: Teffu JM
#	Date  : 11 Sept 2024
#
#	This script automate installation of docker (ubunut)
#
#	1. Set up Docker's apt repository.
#	2. Install the Docker packages.
#	3. Verify that the Docker Engine installation is successful by running the hello-world image.
#	4. Manage Docker as a non-root user
#
#######################################################################################################
#
#
	set -x
	
echo "Set up Docker's apt repository"


# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

echo "Install the docker packages"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "verify that the docker engine installation is succesful by running the hello-world image."
sudo docker run hello-world




echo "Manage Docker as a non-root user"
#1. Create the docker group.
sudo groupadd docker
#2. Add your user to the docker group.(replace jaqueenteff with your user)
sudo usermod -aG docker jaqueenteffu
#3.Log out and log back in so that your group membership is re-evaluated.
#You can also run the following command to activate the changes to groups:
newgrp docker


