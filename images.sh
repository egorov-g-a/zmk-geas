#! /bin/bash
echo "Parsing ZMK keymap..."
keymap -d -c draw/keymap_config.yaml parse -z config/corne.keymap -c 12 -l Base Diktor NAV FN NUM Sys Mouse >draw/corne.yaml
echo -e "\nDrawing keymap..."
keymap -d -c draw/keymap_config.yaml draw -k crkbd/rev1 -l LAYOUT_split_3x6_3 --keys-only draw/corne.yaml >draw/corne.svg
