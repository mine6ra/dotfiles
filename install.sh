#!/bin/zsh
for name in *; do
    [ "$name" = "install.sh" ] && continue
    [ "$name" = "LICENSE" ] && continue
    [ "$name" = "README.md" ] && continue
    [ "$name" = ".DS_Store" ] && continue
    [ "$name" = "com.googlecode.iterm2.plist" ] && continue

    if ["$REMOTE_CONTAINERS"]; then
        [ "$name" = "config/karabiner"* ] && continue
        [ "$name" = "Brewfile" ] && continue
        [ "$name" = "gitignore_global" ] && continue
    fi

    # 上書きはしない
    target="$HOME/.$name"
    if [ ! -e "$target" ]; then
        ln -s "$PWD/$name" "$target"
        echo "Created $name"
    fi
done