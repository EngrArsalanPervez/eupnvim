# Pre Requisite
apt install vim-gtk xclip ripgrep curl universal-ctags build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs default-jdk npm
autocmd FileType apache setlocal commentstring=#\ %s
pip3 install pynvim

cp -R .ctags.d ~/
cp init.vim ~/config/nvim/init.vim

#Install NerdFont
#  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
#  unzip Hermit.zip
#  cp Hurmit*.otf /usr/share/fonts/
#  cp Hurmit*.otf /usr/local/share/fonts/
