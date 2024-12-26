#! /bin/bash
# keymap -c keymap_config.yaml parse -c 12 -z ../config/corne.keymap >corne.yaml
keymap -c keymap_config.yaml parse -c 12 -l Base Diktor NAV FN NUM Sys Mouse -z ../config/corne.keymap >corne.yaml
# keymap -c config.yaml parse -c 12 -z ../config/corne.keymap >corne.yaml
keymap -c keymap_config.yaml draw corne.yaml -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" --keys-only >corne.svg
keymap -c keymap_config.yaml draw corne.yaml -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" -s Base --combos-only >combos.svg
