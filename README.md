DHash's dev env setup 💻
========================

```
 ~/code ⮀
» asciify "Super Setup" -f slant

   _____                                         _____         __
  / ___/  __  __    ____   ___    _____         / ___/  ___   / /_  __  __    ____
  \__ \  / / / /   / __ \ / _ \  / ___/         \__ \  / _ \ / __/ / / / /   / __ \
 ___/ / / /_/ /   / /_/ //  __/ / /            ___/ / /  __// /_  / /_/ /   / /_/ /
/____/  \__,_/   / .___/ \___/ /_/            /____/  \___/ \__/  \__,_/   / .___/
                /_/                                                       /_/
```

## Installs

1. Install iterm2 from https://www.iterm2.com

2. Install Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
3. Install Brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

4. Install all software
```
make all
```

## Configuration

### iterm2

- Import super.iterm2colors presets
- Install Powerline-patched fonts - https://gist.github.com/1595572
- Set 12pt Menlo Regular for Powerline as fonts
- Tick off "Native full screen integrations"

### zsh

- `ln ./super.zsh-theme ~/.oh-my-zsh/themes/super.zsh-theme`
- `rm ~/.zshrc`
- `ln zshrc ~/.zshrc`
- `touch ~/.tokens`

### git

- `ln .gitignore_global ~/.gitignore_global`
- `git config --global core.excludesfile ~/.gitignore_global`

### vim

- `mkdir ~/.vim`
- `mkdir ~/.vim/colors`
- `mkdir ~/.vim/.swp`
- `mkdir ~/.vim/.undo`
- `cp solarized8.vim ~/.vim/colors`
- `ln ./vimrc ~/.vim/vimrc`
- `mkdir -p ~/.vim/pack/git-plugins/start`
- `git clone https://github.com/w0rp/ale.git ~/.vim/pack/git-plugins/start/ale`
- Now you can now use vim

### tmux

- `brew install reattach-to-user-namespace`
- `ln ./tmux.conf ~/.tmux.conf`
- `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- You can now start tmux
- Set tmux to autoload on iterm with `bash -l -c "(tmux attach || tmux) && exit"` on your iterm profile
