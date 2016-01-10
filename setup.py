#!/usr/bin/env python

import subprocess
import sys

def run_cmd(command, is_verbose):
    if is_verbose: 
        print(command)
    subprocess.call([command], shell=True)

def linkage():
    brc = open("../.bashrc", 'a')
    brc.write("\n. ~/mybash/linkage \n")
    brc.write("\nexport TERM='xterm-256color'\n")
    brc.write("\nPS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '\n")


print("Running Setup Script...")
args = sys.argv
verbose = False

if '-v' in args or '--verbose' in args:
    verbose = True

if '-i' in args or '--initial' in args:
    linkage()


run_cmd("source ~/.bashrc", True)













