#!/bin/bash

# Specify colors for shell
red='tput setaf 1'              # red
green='tput setaf 2'            # green
yellow='tput setaf 3'           # yellow
blue='tput setaf 4'             # blue
violet='tput setaf 5'           # violet
cyan='tput setaf 6'             # cyan
white='tput setaf 7'            # white
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold red
bldgrn=${txtbld}$(tput setaf 2) # Bold green
bldblu=${txtbld}$(tput setaf 4) # Bold blue
bldcya=${txtbld}$(tput setaf 6) # Bold cyan
normal='tput sgr0'

./vendor/hexagon/tools/colors

tput setaf 4
tput bold
echo " +==========================================================+";
echo " +            \ \                                           +";
echo " +             \ \        H.E.X.A.G.O.N         77777777777 +";
echo " +             / /            R.O.M             7777777777  +";
echo " +            / /  _     _    _______ _    _        7777    +";
echo " +           / /  | |   | |  (_______) \  / /      7777     +";
echo " +          / /   | |__ | |   _____   \ \/ /      7777      +";
echo " +         / /    |  __|| |  |  ___|   \  /      7777       +";
echo " +________/ /     | |   | |  | |_____ / /\ \    7777        +";
echo " +_________/      |_|   |_|  |_______/_/  \_\  7777         +";
echo " +==========================================================+";
tput setaf 1
tput bold







