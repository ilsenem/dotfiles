EDITOR=nvim
VISUAL=nvim

### Homebrew and custom binaries

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
PATH="$PATH:$HOME/.local/bin:$HOME/.composer/vendor/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"

### Zinit

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### Plugins

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Should be the last one
zinit light zsh-users/zsh-syntax-highlighting

### Completions

autoload -Uz compinit && compinit

zinit cdreplay -q

### Key bindings

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

### History

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

### Completion style

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

### Aliases

alias ls='ls --color'
alias ll='ls -la --color'
alias c='clear'
alias q='exit'
alias vim='nvim'
alias cat='bat'

### Shell integration

# Fuzzy search

export FZF_DEFAULT_OPTS='--preview="bat {}"'

source <(fzf --zsh)

# Overpowered `cd`

eval "$(zoxide init --cmd cd zsh)"

# Oh-My-Posh prompt

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/theme.toml)"
fi
