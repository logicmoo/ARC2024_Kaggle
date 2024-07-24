#!/bin/bash

# Update package list and install pip if it's not already installed
sudo apt update
sudo apt install python3-pip -y

# Install Jupyter
pip3 install jupyter

# Generate Jupyter configuration file
jupyter notebook --generate-config

# Set a password for Jupyter (this will prompt you to enter a password)
jupyter notebook password

# Start the Jupyter notebook server on port 8888
#jupyter notebook --no-browser --port=8888


