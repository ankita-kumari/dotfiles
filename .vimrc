"Syntax highlighting {{{ 
filetype plugin indent on
syntax on
"}}}
" Colors {{{
"colorscheme badwolf"
syntax enable "enable syntax processing"
"}}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
"}}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command me
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
"}}}
" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
"nnoremap <leader><space> :nohlsearch<CR>
"}}}
" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
"}}}
" Misc ---------------------------------------
set modelines=1
" vim:foldmethod=marker:foldlevel=0
