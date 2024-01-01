# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/Programming/bash/scripts/"
export BROWSER=firefox
export EDITOR=nvim
export TERM='xterm-256color'
export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"
export PAGER=less
export ARCHFLAGS="-arch x86_64"


function zshrc()
{
    "$EDITOR" "$HOME/.zshrc"
    echo "Run exec zsh -l to reload the configuration."
}

# My aliases
alias configi3='vim ~/.config/i3/config'
alias update="sudo bash ~/Github/Arch/arch-update.sh"
alias weather="curl wttr.in"
alias lsa="ls -a"
alias ls="ls --color=auto"
alias mv="mv -v"
alias cp="cp -v"
alias rm='rm -v'
alias vim="nvim"
alias ls='ls --color=auto'
alias arch="uname -m"
alias fs="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# Configure the prompt content
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time ram disk_usage ranger)


#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "darkblood" "pmcgee" )
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
    man
    zsh-interactive-cd
)


source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='vim'
fi

if [ -x "$(command -v colorls)" ]
then
    alias ls="colorls"
    alias la="colorls -al"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



#unset ZSH_AUTOSUGGEST_USE_ASYNC

