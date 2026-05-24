#!/bin/sh
# [PLUGIN_METADATA]
# Name: Input Latency Optimization
# Version: 1.0.0
# Author: Nexus-Core
# Function: Reduces UI animation scales and optimizes touch response.
# Status: Active
# ==========================================================

# 1. Reduce Animation Scales
# Speeds up the UI responsiveness by cutting animation duration in half.
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5

# 2. Optimize Touch Feedback
# Slightly increases touch sampling reporting (where supported by kernel).
settings put system touch_exploration_enabled 0

echo "Module 04: Input Latency Plugin Loaded."
