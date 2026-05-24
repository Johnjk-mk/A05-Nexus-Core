#!/bin/sh
# [PLUGIN_METADATA]
# Name: Network Stability
# Version: 1.0.0
# Author: Nexus-Core
# Function: Reduces network jitter and prioritizes gaming data packets.
# Status: Active
# ==========================================================

# 1. Optimize DNS lookups
# Using a faster, more stable DNS path can reduce initial connection jitter.
settings put global dns_server 8.8.8.8

# 2. Disable Aggressive Data Saver
# Ensures that network traffic for PUBG is never throttled by the OS.
settings put global restricted_background_data 0

# 3. Disable Wi-Fi Power Save
# Stops the Wi-Fi chip from entering low-power mode, preventing minor lag spikes.
svc wifi disablesleep

echo "Module 05: Network Stability Plugin Loaded."
