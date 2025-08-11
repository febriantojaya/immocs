#!/bin/bash
#
# This script removes the ThingsBoard data and log directories
# located in the current folder.
# WARNING: This will permanently delete the directories and all their content.

# Exit immediately if a command exits with a non-zero status.
set -e

DATA_DIR="./mytb-data"
LOGS_DIR="./mytb-logs"

echo "This script will permanently delete the following directories and all their content:"
echo "  - ${DATA_DIR}"
echo "  - ${LOGS_DIR}"
echo ""

# Ask for user confirmation
read -p "Are you sure you want to continue? (y/N) " -n 1 -r
echo # Move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "--- Starting cleanup process ---"

  # Check if data directory exists before trying to remove it
  if [ -d "$DATA_DIR" ]; then
    echo "Removing data directory: ${DATA_DIR}..."
    sudo rm -rf ${DATA_DIR}
    echo "Data directory removed."
  else
    echo "Warning: Data directory ${DATA_DIR} not found. Skipping."
  fi

  echo "" # Add a blank line for readability

  # Check if logs directory exists before trying to remove it
  if [ -d "$LOGS_DIR" ]; then
    echo "Removing logs directory: ${LOGS_DIR}..."
    sudo rm -rf ${LOGS_DIR}
    echo "Logs directory removed."
  else
    echo "Warning: Logs directory ${LOGS_DIR} not found. Skipping."
  fi

  echo ""
  echo "--- Cleanup finished successfully! ---"
else
  echo "Cleanup cancelled by user."
fi
