#!/bin/zsh
for name in .*; do
    if [ ! -d "$name" ]; then
        [ "$name" = ".DS_Store" ] && continue

        # 上書きはしない
        target="$HOME/$name"
        if [ ! -e "$target" ]; then
            ln -s "$PWD/$name" "$target"
            echo "Created $name"
        fi
    fi
done