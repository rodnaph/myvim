
syntax on

filetype plugin indent on

" enable 256 colors
set t_Co=256

" ensure unix line endings
set ff=unix

" always use paste mode
set paste

" enable copy-on-select in macvim
set go+=a

" status line
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" show filename for windows
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" no back files
set nobackup
set nowritebackup
set noswapfile
