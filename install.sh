#!/usr/bin/env bash

. .env

mkdir -p "$OUTPUT"

files=("keybindings.json" "settings.json" "snippets")
for f in "${files[@]}"; do
	ln -sv "$PWD/config/$f" "$OUTPUT/$f"
	echo ":: $OUTPUT/$f"
done

echo "Installing extensions..."
cat config/extensions.txt | xargs -L 1 code --install-extension | grep -v "Installing extensions..."
