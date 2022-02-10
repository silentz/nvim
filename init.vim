" Neovim config by
" github.com/silentz

" Required post install commands:
" CocInstall coc-go
" CocInstall coc-pyright
" CocInstall coc-vimtex

" =====================
"    Loading plugins
" =====================

call plug#begin()

    " Interface
    Plug 'mhinz/vim-startify'
    Plug 'ayu-theme/ayu-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'

    " General
    Plug 'scrooloose/nerdtree'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'Raimondi/delimitMate'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Python
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'raimon49/requirements.txt.vim'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " C++ specific
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Latex
    Plug 'lervag/vimtex'

    " Dart
    Plug 'dart-lang/dart-vim-plugin'

call plug#end()


" =====================
"    Common settings
" =====================

set autoindent             " copy indent from previous line
set clipboard+=unnamedplus " use system clipboard for all operations
set colorcolumn=120        " vertical line to align text
set expandtab              " replace tab symbol with spaces
set mouse=a                " activate mouse actions
set number                 " show line numbers
set shiftwidth=4           " left/right shift command spaces
set smartindent            " see ':help smartindent'
set tabstop=4              " tab symbol width in spaces
set termguicolors          " enable 24-bit rgb colors

" let g:python_host_prog="/usr/bin/python2.7"
let g:python3_host_prog="/usr/bin/python3.10"

" ====================
"    Tab management
" ====================

nnoremap <C-t> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>
inoremap <C-Right> <Esc>:tabnext<CR>


" ========================
"    Interface settings
" ========================

let g:lightline = {'colorscheme': 'ayu_mirage'}
let ayucolor="mirage"
colorscheme ayu


" =========================
"    Python IDE settings
" =========================

let g:pydocstring_formatter = 'numpy'


" =========================
"    Golang IDE settings
" =========================

let g:go_metalinter_autosave = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" ========================
"    File tree settings
" ========================

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
map <C-n> :NERDTreeToggle<CR>

" ======================
"    Comment settings
" ======================

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
map <C-_> <Plug>NERDCommenterToggle

" ======================
"    Indent settings
" ======================

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
autocmd Filetype json let g:indentLine_setConceal = 0

" ======================
"    Latex settings
" ======================

autocmd Filetype tex let g:indentLine_setConceal = 0
