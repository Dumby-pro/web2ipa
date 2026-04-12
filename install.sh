#!/usr/bin/env bash
set -e

REPO_URL="https://Dumby-pro.github.io/web2ipa"
KEYRING="/usr/share/keyrings/web2ipa.gpg"
SOURCES_LIST="/etc/apt/sources.list.d/web2ipa.list"

echo "Installing web2ipa APT repository..."

# Import GPG key
curl -fsSL "${REPO_URL}/KEY.gpg" | gpg --dearmor -o "${KEYRING}"

# Add repository
echo "deb [signed-by=${KEYRING}] ${REPO_URL} stable main" > "${SOURCES_LIST}"

# Update and install
apt update
apt install -y web2ipa

echo "Done! Run 'web2ipa --help' to get started."
