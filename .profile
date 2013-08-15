# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples

export ORG_HOME="/home/moi/lang/elisp/org-mode/"
export LANG=fr_FR.UTF-8


umask 022

export CVS_RSH=ssh
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/sbin:/usr/sbin
export MANPATH=$HOME/prog/git/share/man:

path () {
	if [ -d $1 ]; then
		export PATH=$1:$PATH
	fi
}

endpath () {
	if [ -d $1 ]; then
		export PATH=$PATH:$1
	fi
}


for i in ~/prog/*/bin/; do
  if [ -d $i ] ; then
     endpath $i
  fi
done

path /var/lib/gems/1.8/bin/

# the rest of this file is commented out.

# include .bashrc if it exists

# export PYTHONPATH=~/enseignement/tca101/2002/TCA101/src/
