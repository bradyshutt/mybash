#!/usr/bin/env python

import subprocess
import sys

def run_cmd(command, is_verbose):
    if is_verbose: print(command)
    subprocess.call([command], shell=True)

def move_files(v):
    command = "cp bash_aliases ~/.bash_aliases"
    run_cmd(command, v)

    command = "cp bash_functions ~/.bash_functions"
    run_cmd(command, v)

    command = "cp vimrc ~/.vimrc"
    run_cmd(command, v)

    command = "cp -r vim ~/.vim"
    run_cmd(command, v)

def linkage():
    brc = open("../.bashrc", 'a')
    brc.write(". mybash/linkage \n")
    brc.write("export TERM='xterm-256color'\n")
    brc.write("PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '\n")


print("Running Setup Script...")
args = sys.argv
verbose = False

if '-v' or '--verbose' in args:
    verbose = True

move_files(verbose)

if '-i' or '--initial' in args:
    linkage()














