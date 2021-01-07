#!/bin/zsh
for name in .*; do
    if [ ! -d "$name" ]; then
        [ "$name" = ".DS_Store" ] && continue
        echo $name

        target="$HOME/$name"
        echo $target
        if [ ! -e "$target" ]; then
            echo "-----> Symlinking your new $target"
            ln -s "$PWD/$name" "$target"
        fi
    fi
done