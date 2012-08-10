alias ls='ls --color=auto'
alias ll='ls -hal'
alias makenew='make clean && make'
export EDITOR=vim

PS1="\[\e[34;1m\]\u@\h \[\e[30;1m\](\[\e[32;1m\]\w\[\e[30;1m\])-\[\e[30;1m\](\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])\$ \[\e[0m\]"
