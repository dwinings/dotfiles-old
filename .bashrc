
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\033[1;30m\]\[\033[1;37m\][\[\033[1;37m\]\[\033[1;36m\]\u\[\033[1;36m\]\[\033[1;37m\]@\[\033[1;37m\]\[\033[1;34m\]\h \[\033[1;34m\]\[\033[1;32m\]\W\[\033[1;32m\]\[\033[1;37m\]]\$ \[\e[0m"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias dvorak='setxkbmap dvorak'
alias qwerty='setxkbmap us'
if [ ${TERM} == "rxvt-unicode" ];
then
 export TERM="xterm"
fi

PATH=$PATH:/home/wisp/.gem/ruby/1.9.1/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
