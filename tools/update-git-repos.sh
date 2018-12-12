#!/bin/bash
# Update subdirectories' git repositories

set -eu

curdir=`pwd`
target=${1:-}

trap 'cd $curdir; printf "\nAll done.\n"' EXIT


if [[ `echo $target | cut -c1` != '/' ]]
then
    target=`echo $curdir/$target | perl -pe 's/\/$//g'`  # Strip trailing slash
fi

current_branch () {
	ref=$(git symbolic-ref HEAD 2> /dev/null)  || ref=$(git rev-parse --short HEAD 2> /dev/null)  || return
	echo ${ref#refs/heads/}
}


dirs=`find $target -name '.git' -print | perl -pe 's/.git$//g'`

if [[ $dirs != '' ]]
then
    echo "Using target directory tree: $target"
    for dir in $dirs
    do
        echo "--> Updating: $dir"
        cd $dir
        git pull origin $(current_branch)
        echo
        cd $curdir
    done
else
    echo "No git repositories found on: $target"
    echo "Usage: $0 directory-tree"
    exit 1
fi

exit 0