# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files for examples
# LANG=fr_FR
. /etc/bash.bashrc
export CVS_RSH=ssh

export EDITOR=myemacs

#export PATH=$HOME/bin:$PATH
# If running interactively, then:
if [ "$PS1" ]; then

    # enable color support of ls and also add handy aliases

    eval `dircolors ~/.dircolors`
    alias ls='ls --color=auto '
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'
    alias rm='rm -i'
    alias mv='mv -i'
    alias cp='cp -i'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'

    # set a fancy prompt

    #PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    . /etc/bash_completion
fi


path ()
{
    if [ -d $1 ]; then
        export PATH=$1:$PATH
    fi
}

endpath ()
{
    if [ -d $1 ]; then
        export PATH=$PATH:$1
    fi
}

export WINDOW_MANAGER=metacity
export HISTFILESIZE=30000
export HISTCONTROL=ignoreboth
export HISTSIZE=30000
shopt -s histappend

sshtmp () {
  ssh -o "StrictHostKeyChecking no" -o "UserKnownHostsFile /dev/null" "$@"
}

sshnew () {
  ssh -o "StrictHostKeyChecking no" "$@"
}

export XMMS_PATH=tcp://toubib:9667
