# Pre Requisite
sudo apt update
sudo apt -y install curl universal-ctags git build-essential cmake python3-venv python3-dev python3-pip python3-full ack -y 
sudo apt -y install python3-pynvim -y
sudo apt -y install npm nodejs

# Lazyvim Pre-Requisite
sudo apt -y install xclip ripgrep lazygit fzf ripgrep fd-find luarocks imagemagick texlive-latex-base
sudo npm install -g node tree-sitter-cli @mermaid-js/mermaid-cli neovim
sudo apt install python3-pynvim

sudo ln -s /usr/bin/fdfind /usr/bin/fd
fd

# C Programming
sudo apt install -y clangd clang-format clang-tidy gdb lldb cmake meson ninja-build pkg-config gdb lldb valgrind bear ccache doxygen graphviz clang-tools

# Go
cd Downloads
wget https://go.dev/dl/go1.25.4.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.25.4.linux-amd64.tar.gz
# with and with sudo
mkdir -p ~/go/{bin,pkg,src}
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOBIN=$HOME/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$GOBIN' >> ~/.bashrc
source ~/.bashrc

# NeoVim Latest
cd Downloads
wget https://github.com/neovim/neovim/releases/download/v0.11.5/nvim-linux-x86_64.appimage
sudo chmod 777 nvim-linux-x86_64.appimage
sudo cp nvim-linux-x86_64.appimage /usr/bin/nvim

# Fonts
cd ~
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/ComicShannsMono.zip
unzip ComicShannsMono.zip
sudo cp Comic*.otf /usr/share/fonts/
sudo cp Comic*.otf /usr/local/share/fonts/
rm *.otf
rm ComicShannsMono.zip

# Lazyvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim

# x
# Enabled Plugins: (18)
coding.blink
coding.mini-surround
coding.yanky
dap.core
editor.aerial
editor.dial
editor.inc-rename
editor.outline
editor.overseer
editor.refactoring
editor.snacks_explorer
editor.snacks_picker
formatting.prettier
test.core
ui.dashboard-nvim
util.dot
util.gitui
util.mini-hipatterns

# Enabled Languages: (11)
lang.clangd
lang.cmake
lang.docker
lang.git
lang.go
lang.json
lang.markdown
lang.python
lang.sql
lang.toml
lang.yaml
