# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$PATH:/usr/src/tarball/node-v5.3.0-linux-x64/bin

export PATH

#
# phpbrew
#
which phpbrew > /dev/null 2>&1
if [ $? -eq 0 ] && [ `whoami` != 'root' ]; then
    . ~/.phpbrew/bashrc
    phpbrew switch php-7.0.1
fi

#
# nvm
#
if [ -f ~/.nvm/nvm.sh ]; then
    . ~/.nvm/nvm.sh
    nvm alias default 6.2.0 > /dev/null 2>&1
fi
