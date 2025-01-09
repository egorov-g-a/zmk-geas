#! /bin/bash
echo "Parsing ZMK keymap..."
# keymap -c keymap_config.yaml parse -c 12 -z ../config/corne.keymap >corne.yaml
keymap -c keymap_config.yaml parse -c 12 -l Base Diktor NAV FN NUM Sys Mouse -z ../config/corne.keymap >corne.yaml
# keymap -c config.yaml parse -c 12 -z ../config/corne.keymap >corne.yaml
echo -e "\nDrawing keymap..."
keymap -c keymap_config.yaml draw -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" --keys-only corne.yaml >corne.svg
keymap -c keymap_config.yaml draw -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" -s Base --combos-only corne.yaml >combos.svg
