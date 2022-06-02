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
