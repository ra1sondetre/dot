# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Alias
alias configi3='vim ~/.config/i3/config'
alias update="sudo bash ~/Github/Arch/arch-update.sh"
alias weather="curl wttr.in"
alias zshupdate="source ~/.zshrc"
alias lsa="ls -a"
alias ls="ls --color=auto"
alias mv="mv -v"
alias cp="cp -v"
alias rm='rm -v'
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias vim="nvim"
alias ls='ls --color=auto'
alias arch="uname -m"
alias lsc="colorls"

# Default settings application
export BROWSER='/usr/bin/firefox'
export EDITOR='/usr/bin/vim'
export TERM='xterm-256color'

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "darkblood" "pmcgee" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Plugins for oh-my-zsh
plugins=(
    fd
    colorize
    zsh-syntax-highlighting
    zsh-autosuggestions
    git
    tmux
    sudo
    emoji
    encode64
    web-search
    fzf
    copybuffer
    #zsh-bat
    man
    command-not-found
    zsh-interactive-cd
)


source $ZSH/oh-my-zsh.sh
# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"
# Compilation flags
export ARCHFLAGS="-arch x86_64"
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH=$PATH:/home/$HOME/.local/share/gem/ruby/3.0.0/bin/
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
