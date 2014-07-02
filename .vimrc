set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

"Indentation
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab      "convert tabs to spaces

set nu             "line numbers

"Ruby indentation
autocmd FileType ruby setlocal et ts=2 sw=2 tw=0

"Linebreak
set lbr
set tw=180
set wrap

"Tabs
map <C-T> <ESC>:tabnew<CR>
map <C-W> <ESC>:tabclose<CR>
"next and previous
map <C-j> <ESC>:tabp<CR>
map <C-l> <ESC>:tabn<CR>

set history=700     "number of lines to remember"

"Filetype plugins
filetype plugin on
filetype indent on

"Standard hotkeys for copy and paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"Undo hotkey
nmap <C-Z> "+u
nmap <C-Y> <C-R>i

set mouse=a

set so=7                "scrolloff

set wildmenu            "command completion

colorscheme desert   "color scheme for vim (gvim uses the one defined in .gvimrc)

set autoread           "read file changes

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

set ruler               "show current position

set cmdheight=2         "command bar height

set hid                 "hide abandoned buffers

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=20

" No annoying sound on errors
set noeb vb t_vb=
set novisualbell
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

set encoding=utf8

"Remove backups
set nobackup
set nowb
set noswapfile

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"Always show status line
set laststatus=2


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
