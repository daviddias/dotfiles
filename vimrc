" Enable line numbers
set number

" Theme
syntax enable
let g:solarized_use16 = 1
colorscheme solarized8
set background=dark
" make colors work correctly on the terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set smartindent
set tabstop=4
set shiftwidth=2
set expandtab

set noundofile

"" Hard Mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" sensible defaults
syntax on
filetype plugin on
set nocompatible
set encoding=utf-8
set showcmd
set ruler " show the cursor position at all times
set number " show line numbers
set cursorline " highlight current line
set showmatch " brackets/braces that is
set mat=5 " duration to show matching brace (1/10 sec)
set shortmess+=I " disable intro message / splashscreen
set splitbelow " new hoz splits go below
set splitright " new vert splits go right
set backspace=indent,eol,start

" bash like autocomplete for commands
set wildmode=longest,list
set wildmenu

" identing
filetype indent on
set autoindent

" autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2

" invisibles
set listchars=tab:˙\ ,eol:¬,nbsp:☠

set list

" wrapping
set wrap linebreak
set showbreak=…

" Activate a line at 80 chars
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

autocmd FileType markdown let &colorcolumn=""
autocmd FileType md let &colorcolumn=""
autocmd FileType tex let &colorcolumn=""

" autocomplete
set completeopt=longest,preview,menu
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set thesaurus-=/usr/share/dict/mthesaur thesaurus+=/usr/share/dict/mthesaur

" searching
set ignorecase " ignore case when searching
set smartcase " unless the search term contains uppercase chars
set incsearch " find the next match as the search term is being typed
set hlsearch " highlight search matches

" swap and undo directories
set swapfile " Use a separate dir for swap files
set directory=~/.vim/.swp//,. " List of directory names for the swap files.
set undofile " Enable persistent undo
set undodir=~/.vim/.undo//,.  " Store undofiles in a tmp dir

" for the find command and it's relatives
" the following tells Vim to look in the directory containing the current
" file (.), then the current directory (empty text between two commas),
" then each directory under the current directory ('**').
set path=.,,**

" use mouse on the terminal
set mouse=a
set ttymouse=xterm2

" use per project settings reading local .vimrc
set exrc
set secure

" tab usage
nnoremap <Leader>] :tabnext<CR>
nnoremap <Leader>[ :tabprevious<CR>

" CtrlP
nnoremap <C-p> :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set exrc
set secure

" common typing mistakes
cnoreabbrev Tabe tabe
cnoreabbrev E e
inoreabbrev requrie require
inoreabbrev lenght length

set omnifunc=syntaxcomplete#Complete
