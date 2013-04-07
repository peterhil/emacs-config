#!/bin/bash
# Update subdirectories' git repositories

set -eu

curdir=`pwd`
trap 'cd $curdir; printf "\nExit by signal or error"; exit 1' EXIT

target=${1:-}
target=`echo $curdir/$target | perl -pe 's/\/$//g'`  # Strip trailing slash


current_branch () {
	ref=$(git symbolic-ref HEAD 2> /dev/null)  || ref=$(git rev-parse --short HEAD 2> /dev/null)  || return
	echo ${ref#refs/heads/}
}


echo "--> Using target directory tree: $target"

for dir in `find $target -name '.git' -print | perl -pe 's/.git$//g'`
do
    echo "--> Updating: $dir"
    cd $dir
    git pull origin $(current_branch)
    echo
    cd $curdir
done


cd $curdir
echo "All done."

exit 0