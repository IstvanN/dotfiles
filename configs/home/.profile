# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

echo "Initializing... Please wait... 99%"
echo "Docker and Java are all set. Neat!"

# custom envs
export LS_COLORS="di=01;04;31"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export SCRIPT_HOME="$HOME/Documents/scripts"

# custom aliases
alias xd="xinput disable 11"
alias xe="xinput enable 11"
alias wttr="curl wttr.in/budapest"
alias cd.="cd ../"
alias mymysql="${SCRIPT_HOME}/mysql.sh"
alias gradle4="${HOME}/programming/gradle-4.10/bin/gradle"
alias jenkins="java -jar ${HOME}/Downloads/prog/jenkins.war --httpPort=9090"
alias ngrokjenkins="${HOME}/Downloads/prog/ngrok http 9090"
alias enteredward="${SCRIPT_HOME}/edward.sh"
alias upgradepls="${SCRIPT_HOME}/upgrade.sh"
alias gitrekt="${SCRIPT_HOME}/gitpush.sh"
alias ls="ls --color --group-directories-first"
alias la="ls -a"
alias gogogo="cd $HOME/go/src/applications"
alias dotfilesupdate="$HOME/.dotfiles/updatedotfiles.sh"
