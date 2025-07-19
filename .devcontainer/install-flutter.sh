#!/bin/bash
# Exit on any error
set -e

echo "Starting Flutter installation..."

# Install dependencies needed to install Flutter
apt-get update
apt-get install -y curl git unzip

# Clone the Flutter SDK from the stable channel to the /opt directory
git clone https://github.com/flutter/flutter.git --depth 1 --branch stable /opt/flutter

# Set correct permissions for the new flutter directory
chown -R vscode:vscode /opt/flutter

# Add the Flutter bin directory to the system's PATH for all users
# This creates a new file that will be loaded by all future shell sessions
echo 'export PATH="$PATH:/opt/flutter/bin"' > /etc/profile.d/flutter.sh

echo "Flutter installed. Pre-caching artifacts as the vscode user..."

# Switch to the vscode user to run flutter doctor and other commands
# This avoids running as root for flutter-specific tasks
su - vscode -c "/opt/flutter/bin/flutter precache"
su - vscode -c "/opt/flutter/bin/flutter doctor"

echo "Flutter installation complete! ✅"
