#! /bin/bash 
list=(bash cheat other tmux vim zsh)

mac_init() {
    while IFS='' read -r line || [[ -n "$line" ]]; do
        brew install "$line"
    done < "./brew.txt"

    while IFS='' read -r line || [[ -n "$line" ]]; do
        brew install --cask "$line"
    done < "./cask.txt"

    list+=(karabiner)
}

if [[ $(uname) == "Darwin" ]]; then
    mac_init
fi


for i in ${list[*]}; do
    stow -t $HOME $i || exit -1
done
