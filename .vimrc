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
Plugin 'scrooloose/vim-slumlord'
Plugin 'aklt/plantuml-syntax'
call vundle#end()

""" Common Configurations
filetype plugin indent on
syntax on
set number
set backspace=indent,eol,start

""" Searching
set incsearch

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
" close pylint window when close file
:autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif

" Yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Markdown Preview
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1

set encoding=utf-8
