#!/bin/bash
set -e

# Print Flutter version for debugging
echo "Installing Flutter..."

# Download and extract Flutter SDK
FLUTTER_VERSION="3.19.3"
wget -q https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz
tar xf flutter_linux_${FLUTTER_VERSION}-stable.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"

# Verify Flutter installation
flutter --version

# Disable Flutter analytics and reporting
flutter config --no-analytics

# Get Flutter dependencies
flutter pub get

# Build Flutter web app
flutter build web --release

# Print success message
echo "Flutter web build completed successfully!"
