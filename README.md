DHash's dev env setup
=====================

## Installs

### Install a nice terminal (iterm2 v3) and shell (zsh)

Download from https://www.iterm2.com

And then

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install all the software part I (via brew)

```
# Install brew first
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./brew.sh
```

### Install all the software part II (via Node.js/npm)

```
./node.sh
```

### Install all the software part II (via App Store)

- Omnifocus 3
- Fantastical 2
- Screenflow 7
- ... (check the purchased tab and click all the "Get" buttons

## Configuration

### iterm2

- Import super.iterm2colors presets
- Install Powerline-patched fonts - https://gist.github.com/1595572
- Set 12pt Menlo Regular for Powerline as fonts
- Tick off "Native full screen integrations"

### zsh

- Install oh-my-zsh
- `ln ./super.zsh-theme ~/.oh-my-zsh/themes/super.zsh-theme`
- `rm ~/.zshrc`
- `ln zshrc ~/.zshrc`

### git

- `ln .gitignore_global ~/.gitignore_global`
- `git config --global core.excludesfile ~/.gitignore_global`

### vim

- `mkdir ~/.vim`
- `mkdir ~/.vim/colors`
- `mkdir ~/.vim/.swp`
- `mkdir ~/.vim/.undo`
- `cp solarized8.vim ~/.vim/colors`
- `ln ./vimrc ~/vim/vimrc`

### tmux

- `brew install reattach-to-user-namespace`
- `ln ./tmux.conf ~/.tmux.conf`
