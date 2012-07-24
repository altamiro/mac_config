set noincsearch
set wrapscan
set ruler
set number
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set cursorline
set backspace=indent,eol,start

syntax on

filetype on
filetype plugin on
source /usr/share/vim/vim73/macros/matchit.vim

" Ref) http://stackoverflow.com/questions/7614546/vim-cursorline-color-change-in-insert-mode
hi CursorLine cterm=none ctermbg=blue ctermfg=white
autocmd InsertEnter * highlight  CursorLine ctermbg=none ctermfg=none
autocmd InsertLeave * highlight  CursorLine ctermbg=blue ctermfg=white

au BufRead,BufNewFile *.tmpl set filetype=html
