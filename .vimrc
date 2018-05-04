"-----------------------
"--     .vimrc
"--     by Matteo Gaito
"-----------------------

"""" Requirements
set nocompatible
filetype off

"""" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'

"""" Common Programming Support
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

"""" Interface 
Plugin 'ryanoasis/vim-devicons'
Plugin 'ajh17/Spacegray.vim'
" Theme and Styling 
set t_Co=256
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme spacegray
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

"""" Programming Section
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

" Puppet
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'rodjek/vim-puppet'

"""" Mappings configurationn
map <C-n> :NERDTreeToggle<CR>

"""" Common Configurations
set number
filetype plugin on
filetype plugin indent on
syntax on
set autoindent
set backspace=indent,eol,start
