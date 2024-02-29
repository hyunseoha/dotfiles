alias .="cd"
alias ..="cd .."

# directory moving
alias aur="cd /home/hyunseo/Documents/git_repo/arch_aur"
alias git_hub="cd ~/Documents/git_repo"

# sudo removal
alias pacman="sudo pacman"

# Ranger config
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rg='ranger'

# Korean INPUT alias
alias sway='env XDG_CURRENT_DESKTOP=sway GTK_IM_MODULE=kime QT_IM_MODULE=kime XMODIFIERS=@im=kime sway'
