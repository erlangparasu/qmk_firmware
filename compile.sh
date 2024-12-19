#!/bin/bash
set -e
rsync -avz --checksum ~/Downloads/lily58_r2g_layout_erlangparasu.json .
rsync -avz lily58_r2g_layout_erlangparasu.json keyboards/lily58/keymaps/default/
qmk json2c keyboards/lily58/keymaps/default/lily58_r2g_layout_erlangparasu.json > keyboards/lily58/keymaps/default/generated_keymap.c
qmk compile -kb lily58/rev1 -km default
# eof
