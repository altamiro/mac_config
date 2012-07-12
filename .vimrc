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

syntax on

hi CursorLine cterm=none ctermbg=blue

au BufRead,BufNewFile *.tmpl set filetype=html
