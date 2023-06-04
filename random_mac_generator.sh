#!/bin/bash

# Retrieve a random vendor MAC address from the macchanger tool's output
vendoraddr=`macchanger -l | awk '{ print $3 }' | shuf -n 1`

# Generate a random MAC address by generating three random numbers in the range [0, 255]
randomaddr=`printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256]`

# Combine the vendor MAC address with the random address to form the final MAC address
randmacaddr="$vendoraddr:$randomaddr"

# Disable the network interface
ip link set <YOUR_NETWORK_INTERFACE> down

# Change the MAC address of the network interface to the generated random MAC address
macchanger -m $randmacaddr <YOUR_NETWORK_INTERFACE>

# Enable the network interface
ip link set <YOUR_NETWORK_INTERFACE> up