#!/usr/bin/env bash
DOT_FILES=(.editorconfig .gitconfig .gitignore .tmux.conf)

for file in ${DOT_FILES[@]}
do
    if [ -h "$HOME/$file" ]; then
        rm $HOME/$file
    fi
    ln -s $HOME/dotfiles/src/$file $HOME/$file
done
