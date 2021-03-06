""" .vimrc custom file
""" ops [at] agate [punkt] pw
""" v.20190926
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" TODO:
"""	$ git clone https://github.com/VundleVim/Vundle.git ~/.vim/bundle/Vundle.vim
"""	$ vim +PluginInstall +qall

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'
" plugins on GitHub repo
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/MatchTag'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-signify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'

Bundle 'elentok/plaintasks.vim'

" All Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
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

syntax enable

" F2 toggles row numbers
set nonumber
map <silent> <F2> :set invnumber<cr>

" fold comments (press SPACE to unfold)
set fdm=expr
set fde=getline(v:lnum)=~'^\\s*#'?1:getline(prevnonblank(v:lnum))=~'^\\s*#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0

" unfold by default
set foldlevel=50

" CTRL+F5 toggles comment folding
let $unrol=0
function UnrolMe()
if $unrol==0
    :exe "normal zR"
    let $unrol=1
else
    :exe "normal zM"
    let $unrol=0
endif
endfunction
noremap <C-F5> :call UnrolMe()<CR>

set autoindent
set backspace=indent,eol,start
set wrap
set complete-=i
set nrformats-=octal

set paste
set backup
set backupdir=~/SAFE/vim.backups
set hlsearch
set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set ignorecase
set smartcase
set tabstop=8
set softtabstop=0
set shiftwidth=4
set noexpandtab
set smarttab
set t_Co=256
set laststatus=2
set scrolloff=5

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""" dark color themes
"colorscheme badwolf
"colorscheme molokai
"colorscheme onedark
"colorscheme tomorrow-night
"colorscheme tomorrow-night-bright

""" light color themes
"colorscheme summerfruit256
colorscheme tomorrow

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

""" use powerline fonts
let g:airline_powerline_fonts = 1

""" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" disable syntastic at start
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>


""" vim-indent-guides options
hi IndentGuidesOdd  guibg=darkgrey   ctermbg=236
hi IndentGuidesEven guibg=darkgrey   ctermbg=237
let indent_guides_color_change_percent = 10
let indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Fixes garbage characters
set t_RV=

" specify file formats
set fileformats=unix,dos

" take backup
set backup

" specify backup directory
set backupdir=~/SAFE

" highlights parentheses
set showmatch

" not insert LF at the end of file
set binary noeol

" change colors for comments if it's set [ syntax on ]
highlight Comment ctermfg=LightBlue
