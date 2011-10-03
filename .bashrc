
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;36m\]\h\[\e[1;32m\] \W\[\e[1;37m\]]\[\e[1;37m\]\$\[\e[0m '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias dvorak='setxkbmap dvorak'
alias qwerty='setxkbmap us'
if [ ${TERM} == "rxvt-unicode" ];
then
 export TERM="xterm"
fi
