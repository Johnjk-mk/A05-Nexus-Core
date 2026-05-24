#!/bin/sh
# [PLUGIN_METADATA]
# Name: Master Execution Script
# Function: Applies all A05-Nexus-Core modules in sequence.
# ==========================================================

echo "Applying A05-Nexus-Core..."
sh /sdcard/A05-Nexus-Core/power_governor.sh
sh /sdcard/A05-Nexus-Core/process_isolation.sh
sh /sdcard/A05-Nexus-Core/gpu_pipeline.sh
sh /sdcard/A05-Nexus-Core/input_latency.sh
sh /sdcard/A05-Nexus-Core/network_stability.sh
sh /sdcard/A05-Nexus-Core/fs_maintenance.sh
sh /sdcard/A05-Nexus-Core/game_config.sh
echo "All modules applied. Performance mode active."
