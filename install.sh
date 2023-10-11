# UnInstall
# PurgeNvim.sh

# Pre Requisite
sudo apt update
sudo apt install xclip ripgrep curl universal-ctags build-essential cmake vim-nox python3-dev fuse libfuse2 git python3-pip ack fd-find vim-gtk3 clang-format -y 
sudo apt install python3-pynvim -y
# YouCompleteMe
#sudo apt install mono-complete golang nodejs default-jdk npm -y

#ln -s $(which fdfind) ~/.local/bin/fd
#export PATH="/usr/bin:$PATH"
sudo ln -s /usr/bin/fdfind /usr/bin/fd

# NeoVim Nightly Version
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim
sudo mkdir -p /root/.config/nvim

# Vim-Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Plugins
#cd ~/eupnvim/
cp -R .ctags.d ~/
sudo cp -R .ctags.d /root/
cp init.vim ~/.config/nvim/init.vim
sudo cp init.vim /root/.config/nvim/init.vim

# Fonts
cd ~
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/ComicShannsMono.zip
unzip ComicShannsMono.zip
sudo cp Comic*.otf /usr/share/fonts/
sudo cp Comic*.otf /usr/local/share/fonts/
rm *.otf
rm ComicShannsMono.zip

sudo apt update
sudo apt install nautilus ubuntu-desktop sshfs
sudo apt upgrade

Green='\033[0;32m'
NC='\033[0m' # No Color
echo -e "${Green}Final Steps"
echo -e "==========="
echo -e "Make sure fd is installed"
echo -e "Change fonts from Terminal->Edit->Preferences->Font"
echo -e "nvim"
echo -e ":PlugInstall"
echo -e ":PlugUpdate"
echo -e "git clone https://github.com/jimthedj65/dotfiles"
echo -e "${NC}"
