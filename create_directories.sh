#!/bin/bash
#
# This script creates the necessary data and log directories for a ThingsBoard
# Docker container in the current directory and sets the correct ownership.

# Exit immediately if a command exits with a non-zero status.
set -e

echo "--- Starting ThingsBoard directory setup ---"

# Create the data directory in the current folder
echo "Creating data directory: ./mytb-data"
mkdir -p ./mytb-data

# Set ownership for the data directory.
# The user:group 799:799 corresponds to the thingsboard user inside the container.
echo "Setting ownership for ./mytb-data..."
sudo chown -R 799:799 ./mytb-data
echo "Data directory setup complete."

echo "" # Add a blank line for readability

# Create the logs directory in the current folder
echo "Creating logs directory: ./mytb-logs"
mkdir -p ./mytb-logs

# Set ownership for the logs directory.
echo "Setting ownership for ./mytb-logs..."
sudo chown -R 799:799 ./mytb-logs
echo "Logs directory setup complete."

echo ""
echo "--- Setup finished successfully! ---"
