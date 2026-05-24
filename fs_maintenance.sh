#!/bin/sh
# [PLUGIN_METADATA]
# Name: Filesystem Maintenance
# Version: 1.0.0
# Author: Nexus-Core
# Function: Clears temporary cache buffers to keep storage IO fast.
# Status: Active
# ==========================================================

# 1. Trim unused memory cache
# This helps the OS reclaim memory that is being held by inactive processes.
sync; echo 3 > /proc/sys/vm/drop_caches

# 2. Clear temp cache
# Quickly clears system-level temp files that can slow down IO during heavy game assets loading.
rm -rf /cache/*

echo "Module 06: Filesystem Maintenance Plugin Loaded."
