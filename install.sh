# Pre Requisite
apt update
apt install vim-gtk xclip ripgrep curl universal-ctags build-essential cmake vim-nox python3-dev fuse libfuse2 git python3-pip ack-grep -y
apt install mono-complete golang nodejs default-jdk npm -y
pip3 install pynvim

# NeoVim Nightly Version
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim

# Vim-Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Plugins
cd ~/eupnvim/
cp -R .ctags.d ~/
cp init.vim ~/.config/nvim/init.vim

# Fonts
cd ~
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/ComicShannsMono.zip
unzip ComicShannsMono.zip
cp Comic*.otf /usr/share/fonts/
cp Comic*.otf /usr/local/share/fonts/
Green='\033[0;32m'
NC='\033[0m' # No Color
echo -e "${Green}Change fonts from Terminal->Edit->Preferences->Font${NC}"
