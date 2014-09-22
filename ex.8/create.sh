#!/bin/bash

source ../_generic_create.sh

function _ex_8() {
    touch first.txt
    git add .
    git commit -m "First commit"
    echo "one" >> first.txt
    git commit -am "Added one"
    echo "two" >> first.txt
    git commit -am "Added two"
    git push
    git reset --hard HEAD~1
    echo "A B C D E F" >> second.txt
    git add .
    git commit --amend -m "Added one"
}

_create _ex_8