# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples

if [ -f ~/.profile ]; then
    source ~/.profile
fi


# include .bashrc if it exists

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
