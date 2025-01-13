#!/bin/bash
set -e
rsync -avz ~/Downloads/lily58_rev1_mouse_erlangparasu.json keyboards/lily58/keymaps/default/
qmk json2c ~/Downloads/lily58_rev1_mouse_erlangparasu.json >keyboards/lily58/keymaps/default/generated_keymap.c
qmk compile -kb lily58/rev1 -km default
# eof
