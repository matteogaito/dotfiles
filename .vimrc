"-----------------------
"--     .vimrc
"--     by Matteo Gaito
"-----------------------

"""" Requirements
set nocompatible
filetype off

"""" Common Configurations
set number
filetype plugin on
syntax on
set backspace=indent,eol,start

"""" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'

"""" Common Programming Support
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=1

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

"""" Mappings configurationn
map <C-n> :NERDTreeToggle<CR>
