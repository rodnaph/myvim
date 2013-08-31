
" enable folding for vim files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" set indent to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" show line numbers
set number

" disabling line wrapping
set nowrap

" search ignores case
set ignorecase
set smartcase

" allow backspacing over indent
set backspace=2

" enable incremental search
set hlsearch
set incsearch

" try auto-indenting
set cindent
set autoindent

" centre cursor when searching
set scrolloff=999

" drop a marker at the end of a change area (ie using 'cw')
set cpoptions=Bces$

