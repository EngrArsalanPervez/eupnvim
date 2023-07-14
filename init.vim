" ~/.config/nvim/init.vim
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
" Paste Before/After              P p
" Undo Redo                       u ctrl+r
" Correct Inner First  (          ci(
" Correct Inner Second (          2ci(
" Terminal Command                :! COMMAND
" NERDTree Open file in New Tab    T t
" Start/Middle/End of Screen      H M L
" Jump to mathing bracket         %
" Horizontal Split                Ctrl+w+v
" Split Screen sizes Equel        Ctrl+w+=
" Increase/Decrease Screen Size   :vertical resize [+-]20
" View ctags                      :tag .<CTRL+D>
" Delete to end of line           :d$
" Delete to start of line         :d0
" Auto Indent                     ==
" Indent Forward/Backword         SHIFT+> SHIFT+<
" Go to Start of doc              gg
" Go to End of doc                G
" Auto Indent whole file          gg=G
" AutoCompletion                  CTRL+Space


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
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
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
set softtabstop=4
set expandtab
set ignorecase
set encoding=utf8
set backspace=indent,eol,start
set number
set splitright
set list lcs=tab:\|\
set iskeyword+=.
set clipboard=unnamedplus
set cursorline
syntax enable
colorscheme monokai

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :e ~/.config/nvim/init.vim<CR>
nnoremap <S-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <C-e> :Files<CR>
nnoremap <C-x> :terminal<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-PageDown> :tabnext<CR>
nnoremap <C-PageUp> :tabprevious<CR>
nnoremap <C-p> :silent !indent %<CR>
let g:SuperTabMappingForward = '<c-space>'
