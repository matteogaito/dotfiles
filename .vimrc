"-----------------------
"--     .vimrc
"--     by Matteo Gaito
"-----------------------

""" Requirements
set nocompatible
filetype off

""" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'jamshedvesuna/vim-markdown-preview'
Plugin 'Townk/vim-autoclose'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'davidhalter/jedi-vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'vim-airline/vim-airline'            	" status line
Plugin 'vim-airline/vim-airline-themes'     	" status line
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'			" Fuzzy Search
Plugin 'jlanzarotta/bufexplorer'		" Buffer viewe
call vundle#end()

""" Common Configurations
filetype plugin indent on
syntax on
set number
set backspace=indent,eol,start
set cursorline                              " highlight the line under the cursor
set title                                   " set the terminal title to the current file
set showcmd                                 " shows partial commands

""" Searching
set incsearch
set ignorecase
set smartcase

""" Programming Section
" Python-mode
" Pylint configuration file
let g:pymode_lint_config = '$HOME/.pylint.rc'
let g:pymode_options_max_line_length=120
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Autofold code
let g:pymode_folding = 1
let g:pymode_indent = 1
" Autocomplete
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
" close pylint window when close file
:autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif

" Yaml
:autocmd BufRead *.yaml setlocal ts=2 sts=2 sw=2 expandtab

" Html
:autocmd BufRead *.html setlocal ts=2 sts=2 sw=2 expandtab

" uml
autocmd FileType plantuml nnoremap <buffer> <leader>b :!/usr/local/bin/plantuml -o %:p:h %<cr>

" Markdown Preview
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1

" Status Line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

""" NerdTree
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 30
let NERDTreeMinimalUI = 1         " Hides Press ? for help
let NERDTreeMapOpenInTab='<C-t>'
map <C-n> :NERDTreeToggle<CR>     " Show/Hide nerdtree ctrl + n
":autocmd VimEnter * NERDTree      " Open Nerdtree at startup
":autocmd VimEnter * wincmd p      " Focus on file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

set encoding=utf-8
