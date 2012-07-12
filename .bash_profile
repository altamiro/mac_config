# ----- aliases -----

alias ll="ls -l"
alias vless="/usr/share/vim/vim73/macros/less.sh"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# ----- tmp dir -----

today=`date +%Y%m%d`
if [ -d "~/.tmp/$today" ]; then
    cd ~/
    rm -rf ~/tmp
    mkdir ~/.tmp/$today -p
    ln -sf ~/.tmp/$today ~/tmp
fi

# ----- shell prompt -----

COLOR="\e[36m"
COLOR_OFF="\e[m"
export PS1="$COLOR[\u@\h:\w]$COLOR_OFF\n\$ "

# ----- exports -----

export PERLBREW_ROOT=~/local/perlbrew/
