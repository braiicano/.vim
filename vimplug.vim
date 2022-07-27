""""""""""""""""""""""
"For VimPlug only call:
""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" statusbar
Plug 'itchyny/lightline.vim'

" theme
Plug 'morhetz/gruvbox'

" nerdtree help
"Plug 'preservi/nerdtree'

" typehelp
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" ide
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" autocomplete
"Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}

"autocomplete
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

call plug#end()
