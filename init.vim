" ~/nvim/init.vim
"
"
" Find and Replace                :%s/foo/bar/g"
" Find and Replace                :6,10s/foo/bar/"
" Go to Line                      :40
" Find Next/Prev Occurance        # *
" Find Next/Prev Occurance        n N
" Go to Defination                ctrl+]
" Forward/Backword GoTo Function  ctrl+o ctrl+i
" Insert/Append Insert-Start/End  i a I A
" Insert Mode Down/up line        o O
" Correct Word/Tokken             cw cW
" Correct Line                    cc
" Delete/Cut Line                 dd
" Delete 5 Lines                  :5dd
" Copy/Yank Line                  yy
" Copy/Yank Word/Tokken           yw yW
" Paste Before/After              p P
" Undo Redo                       u ctrl+r
" Correct Inner First  (          ci(
" Correct Inner Second (          2ci(
" Terminal Command                :! COMMAND
" NERDTree Open file in New Tab    T t
" Start/Middle/End of Screen      H M L
" Jump to mathing bracket         %
" Horizontal Split                Ctrl+w+v
" View ctags                      :tag .<CTRL+D>
" Delete to end of line           :d$
" Delete to start of line         :d0
" Auto Indent                     ==
" Indent Forward/Backword         SHIFT+> SHIFT+<


" KeyMap
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :e ~/.vimrc<CR>
nnoremap <C-e> :Files<CR>
nnoremap <C-x> :terminal<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-PageDown> :tabnext<CR>
nnoremap <C-PageUp> :tabprevious<CR>

" Plugins Installations
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/vim-commentary'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'msanders/snipmate.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'zxqfl/tabnine-vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'sickill/vim-monokai'
Plug 'frazrepo/vim-rainbow'
Plug 'universal-ctags/ctags'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf8
set backspace=indent,eol,start
set number
set splitright
set list lcs=tab:\|\ 
set iskeyword+=.
set clipboard=unnamedplus
set cursorline
set cursorcolumn
syntax enable
colorscheme monokai

" Pre Requisite
" apt install vim-gtk
" apt install xclip
" apt-get install ripgrep curl
" apt install universal-ctags
" apt install build-essential cmake vim-nox python3-dev
" apt install mono-complete golang nodejs default-jdk npm
" sudo apt install vim-youcompleteme
" vim-addon-manager install youcompleteme
" autocmd FileType apache setlocal commentstring=#\ %s
" pip3 install pynvim
"
" Install NerdFont
"   wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
"   unzip Hermit.zip
"   cp Hurmit*.otf /usr/share/fonts/
"   cp Hurmit*.otf /usr/local/share/fonts/
"
" vim-plug
" cd ~/.vim/autoload/
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" cd Project/
" ctags -R
" vim
" ctrl+]
" ctrl+o ctrl+i
"
" ctags css
" cd ~/
" mkdir .ctags.d/
" cd .ctags.d/
" nano eup.ctags
"   --regex-css=/^[ \t]*(([A-Za-z0-9_-]+[ \t\n,]+)+)\{/\1/t,tag,tags/
"   --regex-css=/^[ \t]*#([A-Za-z0-9_-]+)/#\1/i,id,ids/
"   --regex-css=/^[ \t]*\.([A-Za-z0-9_-]+)/\1/c,class,classes/
