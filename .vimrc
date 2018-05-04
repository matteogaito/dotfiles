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
call vundle#end()

""" Common Configurations
filetype plugin indent on
syntax on
set number
set backspace=indent,eol,start

setlocal foldmethod=expr
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldtext=pymode#folding#text()

""" Programming Section
" Python-mode
" Pylint configuration file
let g:pymode_lint_config = '$HOME/.pylint.rc'
let g:pymode_options_max_line_length=120
" close pylint window when close file
:autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif

" Markdown Preview
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1
