#!/usr/bin/python3
import subprocess
import os
import sys

verbose = True

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
    brc.write("\n")
    brc.write(r"PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]../\W\[\033[00m\]\$ '")
    brc.write("\n")
    brc.close()

#    sfile = open(".settings.txt","r")
#    data = sfile.readlines()

    #for d in data: 
    #    if 'linkage' in d:


#    sfile = open(".settings.txt","r")


def setup_vim():
    if verbose: 
        print("Setting up vim...")
    try:
        run_cmd("rm -rf ~/.vim")
        run_cmd("rm -fI ~/.vimrc")
        run_cmd("cp -r vim ~/.vim")
        run_cmd("cp vimrc ~/.vimrc")
    except:
        print("Error, you probably need su privilages")
        exit()

def check_settings(settings_name):
    answer = 'Not found.'
    s_file = open(".settings.txt")
    for line in s_file.readlines():
        if str(settings_name) in line:
            answer = line.split(':')[1].strip()
    s_file.close()
    return answer

def quit():
    exit()
#----------------------------------------------------------------
#               Main
#----------------------------------------------------------------
print("Running Setup Script...")
args = sys.argv
if '-v' in args or '--verbose' in args:
    verbose = False

options = [
        ('a', 'Setup ViM', setup_vim),
        ('b', 'Setup linkage file', linkage),
        ('c', 'Exit', quit),
    ]

while True:
    print("Please select an option:")
    for x in options:
        is_done = '' 
        if check_settings(x[2].__name__) == 'done':
            is_done = ' | *Done*' 
        print('\t' + x[0] + ') ' + x[1] + is_done)

    choice = input()

    for i in options:
        if choice == i[0]: i[2]()
#    if choice == 'a':
#        setup_vim()
#
#    if choice == 'b':
#        linkage()
#
#    if choice == 'c':
#
#    if choice == 'd':
#        exit()


