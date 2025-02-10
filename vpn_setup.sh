#!/bin/bash

# Step 1: Install WireGuard

# Download WireGuard
sudo apt update && sudo apt install -y wireguard

# Verify installation
wg --version

# Step 2: Generate Keys (Server & Client)

# WireGuard uses public-private key pairs for authentication.
wg genkey | sudo tee /etc/wireguard/server_private.key | wg pubkey | sudo tee /etc/wireguard/server_public.key

# Now the client should do the same (replace server with client):
# wg genkey | sudo tee /etc/wireguard/client_private.key | wg pubkey | sudo tee /etc/wireguard/client_public.key

# You can view the keys by running:
# cat /etc/wireguard/server_private.key
# cat /etc/wireguard/server_public.key

# Step 3: Configure the WireGuard Server

# Create the server configuration file 