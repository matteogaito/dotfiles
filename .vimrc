"-----------------------
"--     .vimrc
"--     by Matteo Gaito
"-----------------------

"""" Requirements
set nocompatible
filetype off

"""" Common Configurations
set number
syntax on
set autoindent
set backspace=indent,eol,start

"""" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'

"""" Common Programming Support
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'

"""" Programming Section
" Python-mode
Plugin 'klen/python-mode'
setlocal foldmethod=expr
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldtext=pymode#folding#text()
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

" Puppet
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'rodjek/vim-puppet'

"""" Mappings configurationn
map <C-n> :NERDTreeToggle<CR>
