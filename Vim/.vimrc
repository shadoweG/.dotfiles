"
" jacobb .vimrc
"

set nocompatible
syntax on

call plug#begin('~/.vim/plugged')

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vimsence/vimsence'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/ap/vim-css-color'
Plug 'instant-markdown/vim-instant-markdown'

call plug#end()

    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

colorscheme spaceduck 

set number
set hlsearch
set incsearch
set ignorecase 
set laststatus=2
set noshowmode
set nowrap
set clipboard+=unnamedplus
set completeopt+=menuone
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set completeopt+=noinsert
set encoding=UTF-8
"set mouse=a "yes I'm a psychopath

let g:rainbow_active = 1
let g:kite_supported_languages = ['*']
let g:kite_tab_complete = 1
let g:lightline_theme = 'spaceduck'
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses
"autocmd VimEnter * hi Normal ctermbg=none
hi Normal guibg=NONE ctermbg=NONE

:command S :x !sudo tee %

nmap <C-t> :NERDTreeToggle<CR>
