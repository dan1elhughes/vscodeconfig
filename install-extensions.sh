#!/usr/bin/env bash


echo "Installing extensions..."
cat config/extensions.txt | xargs -L 1 code --install-extension | grep -v "Installing extensions..."
