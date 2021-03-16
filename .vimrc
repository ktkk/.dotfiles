syntax on
set mouse=a

set title titlestring=%f

set hidden

set smartindent
set autoindent

set number relativenumber
set noshowmode
set ruler
set nowrap
set incsearch
set belloff=all

colorscheme slate
set signcolumn=number

" Add XDG_CONFIG_HOME to runtimepath
set rtp+=~/.config/vim

" Plugin Manager
call plug#begin('~/.config/vim/plugged')
	" Hex color preview
	Plug 'ap/vim-css-color'

	" Cpp highlighting
	Plug 'octol/vim-cpp-enhanced-highlight'

	" Markdown preview
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

	" Statusline
	Plug 'itchyny/lightline.vim'

	" Fern filemanager
	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/nerdfont.vim'
	Plug 'lambdalisue/fern-renderer-nerdfont.vim'
	Plug 'lambdalisue/glyph-palette.vim'
call plug#end()

" Fern config
source $HOME/.config/vim/fern_config.vim

augroup fern-startup
	autocmd! *
	autocmd VimEnter * ++nested Fern. -drawer -reveal=% | wincmd p
augroup END
