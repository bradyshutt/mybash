#!/usr/bin/env python 
import subprocess
import os
import sys

verbose = True

ok
def run_cmd(command):
    if verbose: 
        print("Running command: \n " + command)
    subprocess.call([command], shell=True)

def linkage():
    if verbose: 
        print("Setting up linkage file...")
    brc = open("../.bashrc", 'a')
    brc.write("\n. ~/mybash/linkage \n")
    brc.write("\nexport TERM='xterm-256color'\n")
    brc.write("\nPS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '\n")

def setup_vim():
    if verbose: 
        print("Setting up vim...")
    try:
        run_cmd("rm -rfI ~/.vim")
        run_cmd("cp -r vim ~/.vim")
    except:
        print("Error, you probably need su privilages")
        exit()

#----------------------------------------------------------------
#               Main
#----------------------------------------------------------------
print("Running Setup Script...")
args = sys.argv

if '-v' in args or '--verbose' in args:
    verbose = False

if '-i' in args or '--initial' in args:
    linkage()

if '--vim' in args:
    setup_vim()







