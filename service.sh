#!/bin/sh
# Internal execution sequence
MODDIR=${0%/*}

# 1. System & Thermal Management
sh "$MODDIR/power_governor.sh"
sh "$MODDIR/process_isolation.sh"
sh "$MODDIR/gpu_pipeline.sh"

# 2. Touch Response & Network (Critical for 4-finger claw/hip-fire tracking)
sh "$MODDIR/input_latency.sh"
sh "$MODDIR/network_stability.sh"

# 3. Game State & Maintenance 
sh "$MODDIR/fs_maintenance.sh"
sh "$MODDIR/game_config.sh"
