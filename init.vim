" Neovim config v4.0
" Author: github.com/silentz


" ============== [Plugins] ================

call plug#begin()

    " Interface
    Plug 'mhinz/vim-startify'
    Plug 'ayu-theme/ayu-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'

    " Coding general
    Plug 'ekalinin/dockerfile.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'Raimondi/delimitMate'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Python specific
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'fannheyward/coc-pyright'
    Plug 'raimon49/requirements.txt.vim'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

    " Golang specific
    Plug 'fatih/vim-go'
    Plug 'sebdah/vim-delve'

    " C++ specific
    Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()


" ============== [Embedded] ================

set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set mouse=a
set number
set expandtab
set clipboard+=unnamedplus
set colorcolumn=120

nnoremap <C-t> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>
inoremap <C-Right> <Esc>:tabnext<CR>


" ============= [Interface] =============

set termguicolors
let ayucolor="mirage"
colorscheme ayu


" ============= [Plugins conf] =============

" pydocstring
let g:pydocstring_formatter = 'numpy'

" NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
map <C-n> :NERDTreeToggle<CR>

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
map <C-_> <Plug>NERDCommenterToggle

" indentLine
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
autocmd Filetype json let g:indentLine_setConceal = 0

" lightline
let g:lightline = {'colorscheme': 'ayu_mirage'}

