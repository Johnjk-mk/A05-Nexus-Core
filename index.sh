#!/bin/sh
# AxManager Plugin Index for A05-Nexus-Core
MODDIR=${0%/*}

echo "========================================="
echo " ⚡ A05-NEXUS-CORE INITIALIZING..."
echo "========================================="
echo "[*] Preparing environment..."
echo "[*] Bypassing GMS optimizers..."

# Trigger the main service payload
if [ -f "$MODDIR/service.sh" ]; then
    sh "$MODDIR/service.sh"
    echo "[*] Execution successful."
else
    echo "[!] ERROR: service.sh missing."
    exit 1
fi

echo "========================================="
echo " ✅ OPTIMIZATION COMPLETE"
echo " 🎮 Status: Ready for high-tier combat."
echo "========================================="
