"VIMRC FILE
"BY GREGORY OLADIPO

"pathogen calls (goes at top)
    call pathogen#runtime_append_all_bundles()
    call pathogen#helptags()

set nocompatible
filetype off
set bs=indent,eol,start

"VUNDLE PLUGIN MANAGER.
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    "Vundle is required, it manages itself...
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'gmarik/Vundle.vim'
        Plugin 'tpope/vim-fugitive'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-repeat'
        Plugin 'tpope/vim-commentary'
        Plugin 'marijnh/tern_for_vim'
        Plugin 'godlygeek/tabular'
        Plugin 'plasticboy/vim-markdown'
        Plugin 'mattn/emmet-vim'
        Plugin 'rstacruz/sparkup'
        Plugin 'sjbach/lusty'
        Plugin 'scrooloose/syntastic'
        Plugin 'scrooloose/nerdtree'
        Plugin 'pangloss/vim-javascript'
        
        "Snipmate Installation"
        Plugin 'MarcWeber/vim-addon-mw-utils'
        Plugin 'tomtom/tlib_vim'
        Plugin 'garbas/vim-snipmate'
        Plugin 'honza/vim-snippets'

        Plugin 'mattn/gist-vim'
        Plugin 'hallettj/jslint.vim'
        Plugin 'leshill/vim-json'
        Plugin 'Shutnik/jshint2.vim'
        Plugin 'Lokaltog/vim-easymotion'
        Plugin 'Valloric/YouCompleteMe'

    call vundle#end()
    filetype plugin indent on


"need to allow for comments to be indented
"filetype plugin indent on
  
"PLUGINS
    "LustyExplorer settings...
        :let g:LustyExplorerSuppressRubyWarning = 1
        :let g:LustyExplorerAlwaysShowDotFiles = 1
        set hidden

    "Exuberant Ctags & Taglist settings...
        let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
        set tags=tags

    "solarized colortheme
        syntax enable
        colorscheme solarized

    if has('gui_running')
        set background=dark
    else
        set background=dark
    endif

    "Gundo toggle...
    nnoremap <F5> :GundoToggle<CR>

    "NERDTree
        "toggle hidden files...
            let NERDTreeShowHidden=1

"AUTOCMDS
  if has ("autocmd")
    "these break syntax highlighting...need to fix...
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd bufwritepost .gvimrc source $MYGVIMRC
    "nice to have an autocmd here for snippets...
  endif

  if has("autocmd")
    "Enable file type detection and local settings...
    filetype on
  endif

"ALL MAPPINGS...
"edit VIMRC on the fly
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>g :tabedit ~/.vim/gvimrc<CR>

"window movement mappings
nmap <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
nmap <C-l> <C-w>l

" bubble single lines
nmap <D-k> ddkP
nmap <D-j> ddp
" bubble visual lines
vmap <D-k> xkP'[V']
vmap <D-j> xp'[V']

"ins-completion mappings
inoremap ^L ^X^L
inoremap ^F ^X^F
inoremap ^K ^N^P

"add to end of mappings for repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"indentation
set autoindent
set smartindent

"set the title
set title
"tabbing and shifting
set ts=4 sts=4 sw=4 tw=80 ai expandtab

"tab completion
set complete=.,w,b,t

"command height
set ch=3
"show line number
set nu
"momentary shows closing and opening elements
set showmatch
"mousehide
set mh
set mouse-=a

"antialias fonts
set anti
set guifont=Monospace\ 15

"setting line break
set tw=85
"help height
set hh=15
"equal windows
set ea
"each window
set ruler
"remove search highlighting
set nohls
set incsearch
