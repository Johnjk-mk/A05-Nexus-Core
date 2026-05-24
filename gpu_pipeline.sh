#!/bin/sh
# [PLUGIN_METADATA]
# Name: GPU Pipeline (Game Driver)
# Version: 1.0.0
# Author: Nexus-Core
# Function: Forces the GPU to use specialized Game Driver for rendering.
# Status: Active
# ==========================================================

# 1. Force GPU Rendering
# This tells the system to prioritize hardware-accelerated rendering.
settings put global force_gpu_rendering 1

# 2. Set Game Driver to High Performance
# This ensures that whenever a game is running, the system applies
# the optimized driver profile instead of the generic one.
settings put global game_driver_all_apps 1

echo "Module 03: GPU Pipeline Plugin Loaded."
