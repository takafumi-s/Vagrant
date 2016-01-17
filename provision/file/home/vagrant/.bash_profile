# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

#
# phpbrew
#
which phpbrew > /dev/null 2>&1
if [ $? -eq 0 ] && [ `whoami` != 'root' ]; then
    . ~/.phpbrew/bashrc
    phpbrew switch php-7.0.1
fi
