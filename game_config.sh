#!/bin/sh
# [PLUGIN_METADATA]
# Name: Game Configuration Patch
# Version: 1.0.0
# Author: Nexus-Core
# Function: Sets game-specific flags for better performance.
# Status: Active
# ==========================================================

# Disable unnecessary game-side logging
settings put global game_log_enabled 0

# Set game priority to high
# This signals to the kernel scheduler that PUBG/BGMI needs priority CPU cycles.
renice -n -10 -p $(pgrep -f "com.tencent.ig") 

echo "Module 07: Game Configuration Plugin Loaded."
