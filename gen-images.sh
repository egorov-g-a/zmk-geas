#! /bin/bash
keymap -c ./keymap_drawer.config.yaml parse -z ./config/corne.keymap >draw/corne.yaml
keymap -c ./keymap_drawer.config.yaml draw draw/corne.yaml -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" --keys-only >./draw/corne.svg
keymap -c ./keymap_drawer.config.yaml draw draw/corne.yaml -k "crkbd/rev1" -l "LAYOUT_split_3x6_3" -s base --combos-only >./draw/combos.svg
