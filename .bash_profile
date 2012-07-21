# aliases
# -------

alias ll="ls -l"
alias vless="/usr/share/vim/vim73/macros/less.sh"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias tidy-html5="/usr/local/bin/tidy"
alias indent="gindent -kr -ts4"

# exports
# -------

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export TERM=linux

export PERLBREW_ROOT=~/local/perlbrew

PATH=~/local/bin:$PATH
PATH=${PERLBREW_ROOT}/bin:$PATH
export PATH

# virtualenv, rvm, perlbrew
# -------------------------

source ~/local/virtualenv/python2.7/bin/activate

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/local/perlbrew/etc/bashrc

# pelusa
# ------

export RBXOPT=-X19

pelusa () {
    current_rvm_use=`rvm current`
    rvm use rbx
    ~/.rvm/gems/rbx-head/bin/pelusa $1
    rvm use $current_rvm_use
}

# shell prompt
# ------------

PROMPT_COMMAND='echo -ne "\033k[${USER}@${HOSTNAME%%.*}]\033\\"'
export PS1=":\e[33m\w\e[m\n\$ "

# tmp dir
# -------

today=`date +%Y%m%d`
if [ ! -d ~/.tmp/$today ]; then
    oldtmp=`readlink ~/tmp`
    cd ~/
    mkdir -p ~/.tmp/$today
    ln -sf $oldtmp ~/.tmp/$today/prev
    rm -rf ~/tmp
    ln -sf ~/.tmp/$today ~/tmp
fi

# sandbox
# -------
