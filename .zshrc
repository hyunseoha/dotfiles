
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#KOrean input EXPORT
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# eXAmple aliases
source ~/.alias.zsh
# cd command
#alias .="cd"
#alias ..="cd .."
#
## directory moving
#alias hoffice="cd /home/hyunseo/Nextcloud/work_hyunseo"
#alias aur="cd /home/hyunseo/Documents/git_repo/arch_aur"
#alias git_hub="cd ~/Documents/git_repo"
#alias memo="cd /home/hyunseo/Nextcloud/personal_hyunseo/memo"
#alias test_folder="cd /home/hyunseo/Nextcloud/2020-08-31-BMDV-5GNPR_Data/Oeffentlichkeitsarbeit/20230703_LEO_WissPaper/power_measure/iperf3_bidirection/iperf3_bidirection_test_script/cp_config_trial_1"
# Korean INPUT alias
#alias sway='env XDG_CURRENT_DESKTOP=sway GTK_IM_MODULE=kime QT_IM_MODULE=kime XMODIFIERS=@im=kime sway'
## sudo removal
#alias pacman="sudo pacman"
#
## Ranger config
#alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
#
## pavuaudio problem removal
#alias pa_removal="rm ~/.config/pulse/*"
#
## anyconnect running
#alias anyconnect="/opt/cisco/anyconnect/bin/vpnui"
#
## nextcloud app
#alias nextcloud="~/Nextcloud2/nextcloud_app/Nextcloud-3.10.1-x86_64.AppImage"
#
## messung_shortcut
#alias messen="cd /home/hyunseo/Nextcloud2/2020-08-31-BMDV-5GNPR_Data/Oeffentlichkeitsarbeit/20230703_LEO_WissPaper/power_consumption_agains_gains/uplink_test"

# designate the EDITOR
export EDITOR=emacs

#DOOM plugin
export PATH="$HOME/.config/emacs/bin:$PATH"
#virsh_net bash script
export PATH="$HOME/Documents/sh_files/kvm:$PATH"
#ENVIRONMENT of envy_monitor_bright
export PATH="$HOME/Documents/sh_files/laptop_bright:$PATH"

#powerline-shell
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" -a -x "$(command -v powerline-shell)" ]; then
    install_powerline_precmd
fi
# work timer
source ~/.work.zsh













