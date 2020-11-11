" NeoVim config v3.0
" Author: github.com/silentz


" ============== [Plugins] ================

call plug#begin()

    " Interface
    Plug 'mhinz/vim-startify'
    Plug 'ayu-theme/ayu-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'

    " Python specific
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

    " Coding general
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'preservim/tagbar'
    Plug 'Raimondi/delimitMate'
    Plug 'ntpeters/vim-better-whitespace'

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

" tagbar
nmap <F8> :TagbarToggle<CR>

" lightline
let g:lightline = {'colorscheme': 'ayu_mirage'}

