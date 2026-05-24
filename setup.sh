#!/bin/sh
# ==========================================================
# Module 01: Power Governor & Thermal Management
# Target: Samsung Galaxy A05 (One UI)
# Execution: ADB / Local Shell (Brevent, LADB, Termux)
# ==========================================================

echo "Initializing Module 01: Power & Thermal..."

# 1. Disable Global Power Saving Mode
# Ensures the CPU is not artificially capped by battery saver logic.
settings put global low_power 0

# 2. Disable Adaptive Battery Management
# Prevents Android from suddenly restricting resources to the game process.
settings put global adaptive_battery_management_enabled 0

# 3. Disable Auto Temperature Control (Samsung Specific)
# Tells the Game Optimizing Service (GOS) to stop aggressively 
# throttling the CPU/GPU when the device gets warm.
settings put secure game_auto_temperature_control 0

# 4. Enable Enhanced Processing
# Forces the CPU to scale up its clock speed faster during heavy loads.
settings put global enhanced_processing 1

# 5. Disable Device Idle (Doze Mode)
# Prevents the system from attempting to sleep background processes 
# that handle your touch inputs or network packets.
dumpsys deviceidle disable

echo "Module 01 Applied: CPU is now unrestrained."
