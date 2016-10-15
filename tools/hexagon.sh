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
echo "         _       _             _          _      _      ";
echo "        / /\    / /\          /\ \      /_/\    /\ \    ";
echo "       / / /   / / /         /  \ \     \ \ \   \ \_\   ";
echo "      / /_/   / / /         / /\ \ \     \ \ \__/ / /   ";
echo "     / /\ \__/ / /         / / /\ \_\     \ \__ \/_/    ";
echo "    / /\ \___\/ /         / /_/_ \/_/      \/_/\__/\    ";
echo "   / / /\/___/ /         / /____/\          _/\/__\ \   ";
echo "  / / /   / / /         / /\____\/         / _/_/\ \ \  ";
echo " / / /   / / /         / / /______        / / /   \ \ \ ";
echo "/ / /   / / /         / / /_______\      / / /    /_/ / ";
echo "\/_/    \/_/          \/__________/      \/_/     \_\/  ";
echo "                                                        ";
tput setaf 1
tput bold






