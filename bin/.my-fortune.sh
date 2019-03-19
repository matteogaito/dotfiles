#!/bin/bash

function show_fortune {
    RANGE=3
    number=$RANDOM
    let "number %= $RANGE"
    case $number in
        0)
            cow="moose"
            ;;
        1)
            cow="tux"
            ;;
        2)
            cow="koala"
            ;;  
    esac

    RANGE=2
    number=$RANDOM
    let "number %= $RANGE"
    case $number in
        0)
            command="$(which cowsay)"
            ;;
        1)
            command="$(which cowthink)"
            ;;
    esac
    $(which fortune) -s | $command -f $cow
}

FORTUNEBIN="$(which fortune 2>1 | grep -v 'which: no fortune in')"

if [ ! -z $FORTUNEBIN ];
then
	show_fortune
fi
