# nvim-settings

After cloning need to install **vim-plug**:

### Linux:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Windows:
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

After that launch vim and run **:PlugInstall**

### To install COPILOT do this :
```
git clone https://github.com/github/copilot.vim.git \~/.config/nvim/pack/github/start/copilot.vim
```
Then launch nvim and run :Copilot setup

#### Zsh configs

##### First install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
alias zshconfig="nvim ~/.zshrc"
alias source-zsh="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
#alias nvim="~/Apps/nvim/bin/nvim"
alias nvimcfg="nvim ~/.config/nvim/init.vim"
alias nvimdir="cd ~/.config/nvim"
```
