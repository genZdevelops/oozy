#!/bin/bash
set -e

echo "✅ [Flutter Setup] Starting installation..."

# Define installation directory
FLUTTER_DIR="/home/vscode/flutter"

# Skip if already installed
if [ -d "$FLUTTER_DIR" ]; then
  echo "✅ Flutter is already installed at $FLUTTER_DIR"
else
  echo "📦 Cloning Flutter SDK into $FLUTTER_DIR..."
  git clone https://github.com/flutter/flutter.git --depth 1 --branch stable "$FLUTTER_DIR"
  chown -R vscode:vscode "$FLUTTER_DIR"
fi

# Add to PATH (will persist in container)
echo 'export PATH="$PATH:/home/vscode/flutter/bin"' >> /home/vscode/.bashrc

# NOTE: Skipping `flutter precache` to save space
echo "🚫 Skipping 'flutter precache'. Flutter will fetch what's needed when run."

echo "✅ [Flutter Setup] Complete! Run 'flutter doctor' manually if needed."
