# Dotfiles

## Description

Installs basic configs for Kitty, Nvim and couple useful tools.

## Requirements

### OS

Tested on MacOS only.

### Fonts

FiraCode Nerd Mono is great for this whole configuration:

```bash
brew install font-fira-code-nerd-font
```

### Tools

* ZSH
    ```bash
    brew install zsh
    chsh -s $(which zsh)
    ```

* Oh-My-Posh
    ```bash
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
    ```

* FZF
    ```bash
    brew install fzf
    ```

* Zoxide
    ```bash
    brew install zoxide

* Bat
    ```bash
    brew install bat
    ```

* NeoVim
    ```bash
    brew install neovim
    ```

* Kitty
    ```bash
    brew install kitty
    ```

Additional tools may be required such as:

* PHP
* NodeJS
* ...

## Management

### Stow

Stow is the package manager for configuration files. Install it:

```bash
brew install stow
```

Close this repo in the home dir:

```bash
cd ~/
git clone git@github.com:ilsenem/dotfiles.git ~/.dotfiles
```

Go to the Dotfiles directory and isntall packages you need to configure:

```bash
cd ~/.dotfiles
stow zsh
```

