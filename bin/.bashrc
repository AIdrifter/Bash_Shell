#ble color support of ls and also add handy aliases
#enables color in the terminal bash shell
export CLICOLOR=1
#sets up the color scheme for list
export LSCOLORS=ExFxCxDxBxegedabagacad
#sets up theprompt color (currently a green similar to linux terminal)

GREEN="\[\033[01;32m\]"
WHITE="\[\033[00m\]"
GREEN2="\[\033[01;36m\]"
YELLO="\[\033[0;33m\]"

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ \[\033[0;33m\]$(parse_git_branch)\[\033[00m\]'
#S1="${BASH_NEWLINE}$(date +%H:%M:%S) \u at \h \w \$(parse_git_branch)${BASH_WHITE}$";
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ \[\033[0;33m\]$(parse_git_branch)\[\033[00m\]'
#export PS1="${BASH_NEWLINE}$(date +%H:%M:%S) \u at \h \w \$(parse_git_branch)${BASH_WHITE}$";
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ \[\033[0;33m\]$(parse_git_branch)\[\033[00m\]'
PATH=$PATH:/home/pin/Desktop/git-hub/Bash_Shell/bin

alias ccat='pygmentize -O style=monokai -f console256 -g'
alias ls='ls --color=auto '
alias ll='ls -alrt'
alias la='ls -A'
alias l='ls -CF'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias grep='grep --color'
alias grep1='grep --color -A 5 -B 5 -R -i -nH'
alias grep2='grep --color -i -nH'
alias h='history'
alias make='colormake'

# my alias
BINPATH=/home/pin/Desktop/git-hub/Bash_Shell/bin
NOTEBOOK=/home/pin/Desktop/git-hub/Bash_Shell/notebook
alias g='sh $BINPATH/_grep.sh'
alias h='source $BINPATH/_history_special.sh'
alias cl='ls -l $NOTEBOOK'
alias c='sh $BINPATH/_cat.sh'
alias tmux="TERM=screen-256color-bce tmux"
alias mdv='~/bin/terminal_markdown_viewer/mdv.py'
#alias ccat='~/swork/bin/source-highlight/src-hilite-lesspipe.sh'

source /usr/share/doc/cdargs/examples/cdargs-bash.sh


#From http://rgba.tumblr.com/post/520663635/including-current-git-branch-in-your-bash-prompt setting for Git
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}

