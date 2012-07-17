# aliases
# -------

alias ll="ls -l"
alias vless="/usr/share/vim/vim73/macros/less.sh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias screen="~/local/bin/screen"

# exports
# -------

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export TERM=linux

export PERLBREW_ROOT=~/local/perlbrew/

PATH=$PATH:/usr/local/bin
PATH=$PATH:~/local/bin
PATH=$PATH:${PERLBREW_ROOT}bin/
export PATH

# virtualenv
# ----------

source ~/local/virtualenv/python2.7/bin/activate


# shell prompt
# ------------

PROMPT_COMMAND='echo -ne "\033k[${USER}@${HOSTNAME%%.*}]\033\\"'
export PS1=":\e[33m\w\e[m\n\$ "

# ----- tmp dir -----

today=`date +%Y%m%d`
if [[ ! -d "~/.tmp/$today" ]]; then
    cd ~/
    rm -rf ~/tmp
    mkdir ~/.tmp/$today -p
    ln -sf ~/.tmp/$today ~/tmp
fi

# sandbox
# -------
