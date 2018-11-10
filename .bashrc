export EDITOR=vim

if [ $(type -fp tput) ]; then 
    BLUE="\[\e[34;1m\]"
    GREY="\[\e[30;1m\]"
    GREEN="\[\e[32;1m\]"
    RESET="\[\e[0m\]"
else
    BLUE="\[$(tput setaf 4)\]"
    GREY="[\$(tput setaf 0)\]"
    GREEN="\[$(tput setaf 2)\]"
    RESET="\[$(tput sgr0)\]"
fi

function genpass {
    < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c32
}

function prompt_display {
    files=$(ls -1 | wc -l | sed 's: ::g')
    size=$(ls -hal | grep -m 1 total | sed 's/total //')
    echo "$files files, $size"
}

function set_bash_prompt {
    PS1="${BLUE}\u@\h ${GREY}(${GREEN}\w${GREY})-(${GREEN}$(prompt_display)b${GREY})\$ ${RESET}"
}

PROMPT_COMMAND=set_bash_prompt

alias ls='ls --color=auto'
alias ll='ls -hal'
alias makenew='make clean && make'
alias makekernel='sudo make -j32 && sudo make modules_install && if ! grep -qs /boot /proc/mounts; then sudo mount /dev/sda1 /boot; fi && sudo make install && sudo cp /boot/vmlinuz-* /boot/efi/boot/bootx64.efi && sudo rm /boot/*; sudo umount /boot'
