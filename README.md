David Dias's dev env config setup
=================================

# Software list

- iterm2
- zsh
- brew
- vim
- tmux

# Setup

## iterm2

- Install iterm2
- Importer super.iterm2colors presets
- Install Powerline-patched fonts - https://gist.github.com/1595572
- Set 12pt Menlo Regular for Powerline as fonts
- Tick off "Native full screen integrations"

## zsh

- Install oh-my-zsh
- `ln ./super.zsh-theme ~/.oh-my-zsh/themes/super.zsh-theme`
- `rm ~/.zshrc`
- `ln .zshrc ~/.zshrc`

## git

- `ln ./gitignore_global ~/.gitignore_global`
- `git config --global core.excludesfile ~/.gitignore_global`

## vim

- `ln ./vimrc ~/.vimrc`

## tmux

- Install brew
- `brew install reattach-to-user-namespace`
- `ln ./tmux.conf ~/.tmux.conf`


