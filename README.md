# Docker-Management-Scripts
A collection of scripts for installing and uninstalling Docker on various Linux distributions. Easily set up or clean up Docker environments with these straightforward scripts.

# Docker Management Scripts

This repository contains scripts to help you easily install and uninstall Docker on various Linux distributions. The scripts are designed to simplify Docker management and can be used to quickly set up or clean up Docker environments.

## Scripts

- **docker_installation/docker_installation.sh**: A script to install Docker on a Linux machine.
- **uninstall_docker_engine/: uninstall_docker_engine.sh**: A script to uninstall Docker from a Linux machine.

## Prerequisites

- A Linux-based operating system.
- Tested on ubuntu distro


## Installation

1. **Clone the repository:**

   ```bash
   $ git clone https://github.com/Teffu-Jaqueen-Mokhoma/Docker-Management-Scripts.git
   cd docker-management-scripts

   $ cd docker_installation
     sudo chmod 744 docker_installation.sh
     ./docker_installation.sh
   
   $ systemctl status docker

   **You have succesffuly installed docker:**

## Uninstallation

1. **Clone the repository:**

  ```bash
  $ git clone https://github.com/Teffu-Jaqueen-Mokhoma/Docker-Management-Scripts.git
   cd docker-management-scripts or if already downloaded cd uninstall_docker_engine

  $ sudo chmod 744 uninstall_docker_engine.sh
    ./uninstall_docker_engine.sh

  $ systemctl status docker

  ** Walla docker is no longer active on the machine**

