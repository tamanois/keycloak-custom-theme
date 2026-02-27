#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e
echo "Installing dependencies.."
npm install

echo "Running build script for Keycloak theme..."
npm run build-keycloak-theme

echo "Build completed successfully!"