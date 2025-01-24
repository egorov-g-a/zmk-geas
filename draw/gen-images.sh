#! /bin/bash
# required yq version v4.x
yq eval-all '. as $item ireduce ({}; . * $item )' keymap_config.yaml rus_keycodes.yaml >keymap_config_rus.yaml
echo "Parsing ZMK keymap..."
keymap --config keymap_config.yaml parse --columns 12 --layer-names Base Diktor NAV FN NUM Sys Mouse --zmk-keymap ../config/corne.keymap >corne_orig.yaml
keymap --config keymap_config_rus.yaml parse --columns 12 --layer-names Base Diktor NAV FN NUM Sys Mouse --zmk-keymap ../config/corne.keymap >corne_rus.yaml
yq eval-all 'select(fileIndex==0).layers.Diktor = select(fileIndex==1).layers.Diktor | select(fileIndex==0)' corne_orig.yaml corne_rus.yaml >corne.yaml
echo -e "\nDrawing keymap..."
keymap --config keymap_config.yaml draw --qmk-keyboard "crkbd/rev1" --layout-name "LAYOUT_split_3x6_3" --keys-only corne.yaml >corne.svg
keymap --config keymap_config_rus.yaml draw --qmk-keyboard "crkbd/rev1" --layout-name "LAYOUT_split_3x6_3" --select-layers Diktor --keys-only corne.yaml >corne_rus.svg
keymap --config keymap_config.yaml draw --qmk-keyboard "crkbd/rev1" --layout-name "LAYOUT_split_3x6_3" --select-layers Base NAV --combos-only corne.yaml >combos.svg
