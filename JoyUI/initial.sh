#!/bin/bash
# Sync
telegram -M "JoyUI: Sync started"
SYNC_START=$(date +"%s")

sudo -E apt-get -qq update
sudo -E apt-get -qq install git openjdk-8-jdk wget expect yarn
pip install pyrogram tgcrypto
yarn build

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START))
telegram -M "JoyUI: Sync completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds"