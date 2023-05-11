# eupnvim

##### NeoVim Installation

Reference: **https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/**

```
apt update

sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y

wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin

cd ~
mkdir -p .config/nvim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/.vimrc ~/.config/nvim/init.vim

pip3 install --user neovim
```

##### Configurations
Follow the instructions in https://github.com/EngrUsmanPervez/eupnvim/blob/main/pull.sh
