" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute 'mkdir -p ~/.vim/plugged'
    execute 'mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" let's just go ahead and reference specific commits for repositories that i
" don't own.  will likely break because they may get rebased away, but i like
" that better than just trusting them outright.

Plug 'fholgado/minibufexpl.vim',        { 'commit': 'ad72976ca3df4585d49aa296799f14f3b34cf953' }
Plug 'majutsushi/tagbar',               { 'commit': '387bbadda98e1376ff3871aa461b1f0abd4ece70' }
Plug 'rust-lang/rust.vim',              { 'commit': '7e1e2d259adb0c8c464cb6db6074c55f39fcfba7' }
Plug 'cespare/vim-toml',                { 'commit': '2069e7413d8eaab567fa320723c4af24bb437f3a' }
Plug 'ajweiss/vim-slime',               { 'branch': '201811_tmux_bracketed'                    }
Plug 'ConradIrwin/vim-bracketed-paste', { 'commit': 'c4c639f3cacd1b874ed6f5f196fac772e089c932' }
Plug 'nvie/vim-flake8',                 { 'commit': 'd50b3715ef386e4d998ff85dad6392110536478d' }

filetype plugin indent on                   " required!
call plug#end()
