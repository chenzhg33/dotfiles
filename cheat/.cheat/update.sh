#! /bin/bash 

files=(skill.txt
work.txt
args.txt
benchmark.txt
math.txt
tmux.txt
)
dir=/data/dokuwiki/data/pages/shell
dstdir=/home/zhgchen/.cheat

cd $dir

for file in "${files[@]}"; 
do 
dstfile=${file%%.txt}
rsync -a $dir/$file $dstdir/$dstfile
done
