syntax on
set number relativenumber
set smartindent
set ruler
set nowrap
set incsearch
set belloff=all
colorscheme desert

" color settings
" highlight LineNr ctermbg=239

call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'mbbill/undotree'

call plug#end()
