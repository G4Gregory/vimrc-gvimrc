"VIMRC FILE
"BY GREGORY OLADIPO

"pathogen calls (goes at top)
  call pathogen#runtime_append_all_bundles()
  call pathogen#helptags()

"dont behave like VI
set nocp
set bs=indent,eol,start

"need to allow for comments to be indented
filetype plugin indent on
  
"PLUGINS
  "solarized colortheme
    syntax enable
    colorscheme solarized

    if has('gui_running')
    set background=dark
      else
        set background=light
      endif

  "toggle Gundo
  nnoremap <F5> :GundoToggle<CR>

"AUTOCMDS
  if has ("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd bufwritepost .gvimrc source $MYGVIMRC
  endif

  if has("autocmd")
    "Enable file type detection and local settings...
    filetype on
  endif

"ALL MAPPINGS...
"window movement mappings
"nmap <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"nmap <C-l> <C-w>l

"bubble single lines
nmap <C-k> ddkP
nmap <C-j> ddp
"bubble visual lines
vmap <C-k> xkP'[V']
vmap <C-j> xp'[V']

"indentation
set autoindent
set smartindent

"tabbing and shifting
set ts=2 sts=2 sw=2 expandtab

"ab settings and indentation!
set ts=2
set sw=2
set sts=2
set ai

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


