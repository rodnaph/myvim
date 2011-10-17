
map :ut :PhpUnitFile

set tabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap
set cindent
set nobackup

set paste

syntax on

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


