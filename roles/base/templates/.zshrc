# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zmodload zsh/zprof
# https://powerline.readthedocs.io/en/master/troubleshooting.html#im-using-tmux-and-powerline-looks-like-crap-whats-wrong
# https://github.com/tmux/tmux/wiki/FAQ#how-do-i-use-a-256-colour-terminal
#export TERM="screen-256color"


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/klst9498/.oh-my-zsh"

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting; fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions; fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    autojump
    battery
    colorize
    docker
    emacs
    git-flow
    git-prompt
    git
    history-sync
    kubectl
    k3d
    last-working-dir
    terraform
    thefuck
    helm
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf
    vault
    sudo
    web-search
    z
 jira)

#ZSH_TMUX_AUTOSTART="true" # see tmux plugin

export GITHUB_TOKEN="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"
export GITHUB_USER="klst9498"

export ZSH_HISTORY_FILE_NAME=".zsh_history"
export ZSH_HISTORY_FILE="${HOME}/${ZSH_HISTORY_FILE_NAME}"
export ZSH_HISTORY_PROJ="${HOME}/.zsh_history_proj/zsh_history"
export ZSH_HISTORY_FILE_ENC_NAME="zsh_history"
export ZSH_HISTORY_FILE_ENC="${ZSH_HISTORY_PROJ}/${ZSH_HISTORY_FILE_ENC_NAME}"
export ZSH_HISTORY_COMMIT_MSG="latest $(date)"


source $ZSH/oh-my-zsh.sh

# User configuration
export KUBE_EDITOR="code -w"
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias kg="kubectl get"
alias kgpo="kubectl get pods"
alias kd="kubectl describe"
alias kdpo="kubectl describe pods"
alias krm="kubectl delete"
alias krmf="kubectl delete -f"

alias cdtmp="cd `mktemp -d`"

# make ctrl+p behave exactly like up (https://superuser.com/questions/583583/how-to-make-ctrlp-behave-exactly-like-up-arrow-in-zsh)
bindkey "^P" up-line-or-beginning-search

#PATH=~/bin:$PATH
PATH="/usr/local/go/bin:${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

alias ci="kubectl config get-contexts | grep '*'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias 'a' to grep for aliases
alias a='alias | egrep'
alias gdto='g difftool --no-prompt'

if (( ! $+commands[helm] )); then
  return
fi

# TODO: 2021-12-28: delete this block
# Remove old generated file
command rm -f "${ZSH_CACHE_DIR}/helm_completion"

# TODO: 2021-12-28: remove this bit of code as it exists in oh-my-zsh.sh
# Add completions folder in $ZSH_CACHE_DIR
command mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)



# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `helm`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_helm" ]]; then
  declare -A _comps
  autoload -Uz _helm
  _comps[helm]=_helm
fi

helm completion zsh >| "$ZSH_CACHE_DIR/completions/_helm" &|[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

alias dotfiles='/usr/bin/git --git-dir=/home/klst9498/.dotfiles/ --work-tree=/home/klst9498'

# Export Public GPG Key
alias gpg-epub='gpg --output public.pgp --armor --export staudenmaier@web.de'

# Export Secret Key
alias gpg-epriv='gpg --output private.pgp --armor --export-secret-key staudenmaier@web.de'


[ -f ~/.kubectl_aliases ] && source \
   <(cat ~/.kubectl_aliases | sed -r 's/(kubectl.*) --watch/watch \1/g')

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source /home/klst9498/.p10k.zsh

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

#command -v flux >/dev/null && . <(flux completion zsh) && compdef _flux flux

command -v flux >/dev/null && . <(flux completion zsh)

#command -v velero >/dev/null && . <(velero completion zsh) && compdef _velero velero
command -v velero >/dev/null && . <(velero completion zsh)
command -v helm >/dev/null && . <(helm completion zsh)
command -v kubectl >/dev/null && . <(kubectl completion zsh)
command -v tkn >/dev/null && . <(tkn completion zsh)
command -v k3d >/dev/null && . <(k3d completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:/home/klst9498/.local/bin:$PATH"
setxkbmap -layout de 
source /home/klst9498/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme


K3D_FIX_DNS=1

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

export PATH=$PATH:/usr/local/go/bin

