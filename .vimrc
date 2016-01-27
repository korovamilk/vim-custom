""" .vimrc custom file
""" ops [at] agate [punkt] io
""" v.20160127
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'gregsexton/MatchTag'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set backspace=indent,eol,start
syntax enable
set number
map <silent> <F2> :set invnumber<cr>
set paste
set backup
set backupdir=~/SAFE/vim.backups
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set softtabstop=4
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1 

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""" dark color themes
colorscheme onedark
"colorscheme tomorrow-night

""" light color themes
"colorscheme summerfruit256
"colorscheme tomorrow

""" vim-airline themes selection
"let g:airline_theme='bubblegum'
"let g:airline_theme='distinguished'
"let g:airline_theme='durant'
"let g:airline_theme='hybridline'
"let g:airline_theme='hybrid'
"let g:airline_theme='jellybeans'
let g:airline_theme='kalisi'
"let g:airline_theme='laederon'
"let g:airline_theme='light'
"let g:airline_theme='lucius'
"let g:airline_theme='luna'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'
"let g:airline_theme='sol'
"let g:airline_theme='tomorrow'
"let g:airline_theme='ubaryd'
"let g:airline_theme='wombat'
"let g:airline_theme='zenburn'

""" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" vim-indent-guides options
hi IndentGuidesOdd  guibg=darkgrey   ctermbg=236
hi IndentGuidesEven guibg=darkgrey   ctermbg=237
let indent_guides_color_change_percent = 10
let indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let	g:indent_guides_auto_colors = 0
