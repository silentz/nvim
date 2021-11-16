" Neovim config by
" github.com/silentz


" =====================
"    Loading plugins
" =====================

call plug#begin()

    " Interface
    Plug 'mhinz/vim-startify'
    Plug 'ayu-theme/ayu-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'ryanoasis/vim-devicons'

    " Python
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'fannheyward/coc-pyright'

    " General
    Plug 'scrooloose/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'preservim/tagbar'
    Plug 'Raimondi/delimitMate'
    Plug 'ntpeters/vim-better-whitespace'

    " Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

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
set fillchars+=vert:\

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

au FileType go nmap <F1> :GoDoc<cr>
au FileType go nmap <F2> :GoTest<cr>
au FileType go nmap <F3> :GoDef<cr>
au FileType go nmap <F4> :GoCallers<cr>

au FileType go nmap <F5> :GoDebugBreakpoint<cr>
au FileType go nmap <F6> :GoDebugPrint<cr>
au FileType go nmap <F7> :GoDebugRestart<cr>
au FileType go nmap <F8> :GoDebugStop<cr>

au FileType go nmap <F9>  :GoDebugStep<cr>
au FileType go nmap <F10> :GoDebugNext<cr>
au FileType go nmap <F11> :GoDebugStepOut<cr>
au FileType go nmap <F12> :GoDebugContinue<cr>

let g:go_debug_windows = {
            \ 'vars':       'rightbelow 30vnew',
            \ 'stack':      'rightbelow 10new',
    \ }


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
" nmap <F8> :TagbarToggle<CR>
