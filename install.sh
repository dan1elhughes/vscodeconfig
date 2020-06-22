#!/usr/bin/env bash

. .env

[ -z "$OUTPUT" ] && echo "Missing OUTPUT environment variable. Check readme"

mkdir -p "$OUTPUT"

files=("keybindings.json" "settings.json" "snippets")
for f in "${files[@]}"; do
	ln -sfv "$PWD/config/$f" "$OUTPUT/$f"
done

