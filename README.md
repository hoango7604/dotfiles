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
___
Note: If you are using iTerm2, you can use custom theme which (in my opinion) is suit most with the vim 'gruvbox' theme:
<Command> + , (Preferences) --> Profiles --> Colors --> Color Presets... --> Imports... --> (<Command> + <Shift> + . to show hidden files) --> Select ~/.iterm-themes/MyTheme.itermcolors
___

### USAGE
- Backup files: *./backup.sh*
- Restore files: *./restore.sh*
___
Note: If you can't execute *./backup.sh* or *./restore.sh*, make sure to execute: *chmod +x ./backup.sh ./restore.sh*
___
