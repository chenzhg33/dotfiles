#! /bin/bash 

list=(bash cheat other tmux vim zsh)
for i in ${list[*]}; do
    stow -t $HOME $i || exit -1
done
