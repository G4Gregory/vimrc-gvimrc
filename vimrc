"vimrc file
"by Gregory Oladipo

:syntax enable

"autocmds
if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

if has("autocmd")
	"Enable file type detection and local settings...
	filetype on
endif

"dont behave like VI
set nocp
set bs=indent,eol,start

"indentation
set autoindent
set smartindent

	"need to allow for comments to be indented
	filetype plugin indent on
	syntax enable

"tabbing and shifting
set ts=2 sts=2 sw=2 expandtab

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

"ab settings and indentation!
set ts=2
set sw=2
set sts=2
set ai

"ALL MAPPINGS...
"window movement mappings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"bubble single lines
nmap <C-k> ddkP
nmap <C-j> ddp
"bubble visual lines
vmap <C-k> xkP'[V']
vmap <C-j> xp'[V']
