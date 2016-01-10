#!/usr/bin/env python


print("Running Setup Script...")


export TERM='xterm-256color'

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '

. ~/.bash_aliases
. ~/.bash_func
