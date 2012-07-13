# aliases
# -------

alias ll="ls -l"
alias vless="/usr/share/vim/vim73/macros/less.sh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias screen="~/local/bin/screen"

# exports
# -------

PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:~/local/bin
export PATH

export EDITOR=vim
export TERM=linux
export PERLBREW_ROOT=~/local/perlbrew/

# shell prompt
# ------------

PROMPT_COMMAND='echo -ne "\033k[${USER}@${HOSTNAME%%.*}]\033\\"'
export PS1=":\e[33m\w\e[m\n\$ "

# ----- tmp dir -----

today=`date +%Y%m%d`
if [ -d "~/.tmp/$today" ]; then
    cd ~/
    rm -rf ~/tmp
    mkdir ~/.tmp/$today -p
    ln -sf ~/.tmp/$today ~/tmp
fi

# sandbox
# -------
