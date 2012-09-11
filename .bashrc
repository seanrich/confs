alias ls='ls --color=auto'
alias ll='ls -hal'
alias makenew='make clean && make'
export EDITOR=vim
ls=`which ls`
wc=`which wc`
sed=`which sed`
grep=`which grep`


PS1="\[\e[34;1m\]\u@\h \[\e[30;1m\](\[\e[32;1m\]\w\[\e[30;1m\])-\[\e[30;1m\](\[\e[32;1m\]\$(\$ls -1 | \$wc -l | \$sed 's: ::g') files, \$(\$ls -hal | \$grep -m 1 total | \$sed 's/total //')b\[\e[30;1m\])\$ \[\e[0m\]"
