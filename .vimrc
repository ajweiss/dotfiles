" some basic sane defaults
set nocompatible
set background=dark
set modeline
set ruler
set smartindent

" enable mouse, use sgr for wide terminals
set mouse=a
set ttymouse=sgr

" tabs
set ts=4
set sw=4
set et

source $HOME/.vim/plug.vim

" minibufexpl
let g:miniBufExplVSplit = 20   " column width in chars
let g:miniBufExplSplitBelow=0
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplorerAutoStart = 0

" vim-slime
let g:slime_target = "tmux"
