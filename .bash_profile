# Fortune
bash ~/bin/.my-fortune.sh

## Add the key in order to use key forwarding
if [ `ssh-add -l | grep -c "/Users/matte/.ssh/id_rsa"` -eq 0 ];
then
    ssh-add
fi

## My Variables
export EDITOR=vim
export LANG="en_US.UTF-8"
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# MacPorts Installer addition on 2016-11-21_at_17:31:16: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=1000000

##Iterm2
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Z Jump directory
# https://github.com/rupa/z
export zbin="${HOME}/bin/z.sh"
if [ ! -e "${zbin}" ]
then
	echo "Downloading z.sh from github"
	wget --quiet https://raw.githubusercontent.com/rupa/z/master/z.sh -O ${zbin} && \
		echo "z.sh downloaded"
fi
source ${zbin}

# Virtualenv
# set where virutal environments will live
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

[ -f ~/.bash_aliases ] && source ~/.bash_aliases          	# aliases
[ -f ~/.bash_aliases_work ] && source ~/.bash_aliases_work	# aliases
