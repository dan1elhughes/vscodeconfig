#!/usr/bin/env bash

. .env

mkdir -p "$OUTPUT"

files=("keybindings.json" "settings.json")
for f in "${files[@]}"; do
	cp "./config/$f" "$OUTPUT/$f"
	echo ":: $OUTPUT/$f"
done
