

" ============== [Plugins area] ================
call plug#begin()
    Plug 'scrooloose/nerdcommenter'
    Plug 'Raimondi/delimitMate'
    Plug 'Yggdroot/indentLine'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
    Plug 'mhinz/vim-startify'
    Plug 'alvan/vim-closetag'
    Plug 'lervag/vimtex'
    Plug 'ycm-core/YouCompleteMe'
    " Plug 'majutsushi/tagbar' " ctags executable needed
    " Plug 'metakirby5/codi.vim'
    " Plug 'powerman/vim-plugin-viewdoc'
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


" ============= [Latex settings] ==============
let g:vimtex_view_method='skim'
let g:tex_flavor='latex'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
let g:vimtex_compiler_progname = 'nvr'
let g:tex_conceal = ""
let g:tex_no_error=1

" ============= [Plugin settings] =============
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'


let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1


let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = $HOME . '/.config/nvim/ycm_extra_conf.py'

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.tex=['re!\\[A-Za-z]+',
  \ 're!\\(usepackage|RequirePackage)(\s*\[[^]]*\])?\s*\{[^}]*',
  \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
  \ 're!\\begin(\s*\[[^]]*\])?\s*\{[^}]*',
  \ 're!\\end(\s*\[[^]]*\])?\s*\{[^}]*',
  \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
  \ 're!\\(text|block)cquote\*?(\[[^]]*\]){0,2}{[^}]*',
  \ 're!\\(for|hy)[A-Za-z]*cquote\*?{[^}]*}(\[[^]]*\]){0,2}{[^}]*',
  \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
  \ 're!\\hyperref\[[^]]*',
  \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
  \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
  \ 're!\\(include(only)?|input|subfile){[^}]*',
  \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
  \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*']

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


" nmap <F8> :TagbarToggle<CR>
