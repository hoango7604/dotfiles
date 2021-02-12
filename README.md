# HOANGO7604 CONFIGURATIONS

### DESCRIPTION
- This is my own dotfiles config.
- If there are new config files wanting to backup, add it's directory into Dotfiles line-by-line.
- *vimrc* is just for sourcing vim config files. The *real* vim config files is being stored in [hoango7604/vim-config](https://github.com/hoango7604/vim-config).

### PREREQUISITES

#### Install [Homebrew](https://brew.sh/):
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh):
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
When done, sourcing ~/.zshrc
```
source ~/.zshrc
```
___
If you have trouble in sourcing .zshrc, execute this command:
```
compaudit | xargs chmod g-w,o-w
```
___

#### Install zsh plugins: [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### Install zsh theme [powellevel10k](https://github.com/romkatv/powerlevel10k)
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### USAGE
- Backup files: __*./backup.sh*__
- Restore files: __*./restore.sh*__
    ___
    Notes:
- If you want to backup some other files/directories: place them on *Dotfiles* file (make sure they are not git projects)
- If you can't execute __*./backup.sh*__ or __*./restore.sh*__, make sure to execute: __*chmod +x ./backup.sh ./restore.sh*__
- If you are using iTerm2, you can use custom theme provided, which (in my opinion) suits the most with the vim 'gruvbox' theme:
    \<Command\> + ' , ' (Preferences) --> Profiles --> Colors --> Color Presets... --> Imports... --> (\<Command\> + \<Shift\> + ' . ' to show hidden files) --> Select ~/.iterm-themes/MyTheme.itermcolors
    ![import color preset](./screenshots/import-color-preset.png)
    ![select my theme](./screenshots/select-my-theme.png)
- After reboot iTerm2, if terminal icons are missing, run command __*p10k configure*__ to install missing fonts. After reboot iTerm2 again, the missing icons are now rendered perfectly.
    ___

### OTHER CONFIG (AFTER RESTORED CONFIG)
#### Tmux
My custom tmux configurations are placed on file *~/.tmux.conf*. All you need to do in order to use is to install package [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Reload Tmux to apply changes:
```
tmux source ~/.tmux.conf
```
___
Some configs requires *Meta* key for shortcut. You need to set Option keys (right + left Option) to make it works: \<Command\> + ' , ' (Preferences) --> Profiles --> Keys --> Tick Left Option Key and Right Option Key to value *Esc+*
![set meta key](./screenshots/set-meta-key.png)
___
