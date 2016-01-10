#!/usr/bin/env python

import subprocess
import sys


def move_files(v):
    command = "cp bash_aliases ~/.bash_aliases"
    if v:
        print(command)
    subprocess.call([command], shell=True)

    command = "cp bash_functions ~/.bash_functions"
    if v:
        print(command)
    subprocess.call([command], shell=True)

    command = "cp vimrc ~/.vimrc"
    if v:
        print(command)
    subprocess.call([command], shell=True)

    command = "cp -r vim ~/.vim"
    if v:
        print(command)
    subprocess.call([command], shell=True)


print("Running Setup Script...")
args = sys.argv
verbose = False

if len(args) > 1 and args[1] == '-v':
    verbose = True

move_files(verbose)

brc = open("../.bashrc", 'a')
brc.write(". ~/.bash_aliases")
brc.write(". ~/.bash_func")
brc.write("export TERM='xterm-256color'")
brc.write("PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '")








