#!/bin/sh
# Get the directory where the plugin is installed
MODDIR=${0%/*}

# Run the modules using the relative path
sh "$MODDIR/power_governor.sh"
sh "$MODDIR/process_isolation.sh"
sh "$MODDIR/gpu_pipeline.sh"
sh "$MODDIR/input_latency.sh"
sh "$MODDIR/network_stability.sh"
sh "$MODDIR/fs_maintenance.sh"
sh "$MODDIR/game_config.sh"
