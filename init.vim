

" ============== [Plugins area] ================
call plug#begin()
    Plug 'ycm-core/YouCompleteMe'
    Plug 'scrooloose/nerdcommenter'
    Plug 'Raimondi/delimitMate'
    Plug 'Yggdroot/indentLine'
    Plug 'powerman/vim-plugin-viewdoc'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
    Plug 'metakirby5/codi.vim'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar' " ctags executable needed
call plug#end()


" ============== [Vim embedded settings] ================
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


" ============= [Interface colorscheme] =============
set background=dark
let g:gruvbox_contrast_dark = 'medium'
filetype plugin on
silent colorscheme gruvbox
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


" ============= [Plugin settings] =============
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'


let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1


let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='/home/mepershin/.config/nvim/ycm_extra_conf.py'


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>


let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
map <C-_> <Plug>NERDCommenterToggle


let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

nmap <F8> :TagbarToggle<CR>
