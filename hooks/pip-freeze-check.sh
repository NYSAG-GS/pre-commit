#!/bin/sh

# from https://gist.github.com/milancermak/3849310#file-pre-commit-sh
# make sure requirements.txt is up to date with every commit
# by comparing the output of pip freeze
pip freeze | diff requirements.txt - > /dev/null
if [ $? != 0 ]
then
    echo "Missing python module dependencies in requirements.txt. Run 'pip freeze > requirements.txt' in this repo's home directory to update."
    exit 1
fi