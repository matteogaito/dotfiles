"-----------------------
"--     .vimrc
"--     by Matteo Gaito
"-----------------------

" Requirements
set nocompatible
filetype off

" Common Configurations
set number
filetype plugin on
syntax on

" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'

" Python-mode
Plugin 'klen/python-mode'
" Pylint configuration file
let g:pymode_lint_config = '$HOME/.pylint.rc'
let g:pymode_options_max_line_length=120
" close pylint window when close file
:autocmd WinEnter * if winnr('$') == 1 && ! empty(&buftype) && ! &modified | quit | endif

" Markdown Preview
" remember to install grip
Plugin 'jamshedvesuna/vim-markdown-preview'
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1
