#!/bin/bash

#### script to demonstrate special variables ####

echo "The name of the script is : $0"
echo "The first argument is : $1"
echo "The second argument is : $2"
echo "The total number of arguments passed is : $#"
echo "All the arguments passed are : $*"
echo "The process ID of the current script is : $$"
echo "The last executed command's exit status is : $?"
echo "The name of the shell is : $SHELL"
echo "The home directory of the current user is : $HOME"
echo "The current working directory is : $PWD"
echo "The operating system type is : $OSTYPE"
sleep 10
echo "The ID of the last background command is : $!"
echo "The current user logged in is : $USER"
echo "The path variable is : $PATH"
echo "The internal field separator is : $IFS"
echo "The terminal type is : $TERM"
echo "The language setting is : $LANG"
echo "The current date and time is : $(date)"
echo "The current shell level is : $SHLVL"
echo "The history number of the current command is : $HISTCMD"
echo "The version of bash is : $BASH_VERSION"