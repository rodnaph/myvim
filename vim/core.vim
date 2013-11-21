
" do not be Vi compatible
set nocompatible

" try to use syntax highlighting
syntax on

" turn filetype options on
filetype plugin indent on

" enable 256 colors
set t_Co=256

" ensure unix line endings
set ff=unix

" always use paste mode
set paste

" enable copy-on-select in macvim
set go+=a

" enable persistent undo
if has("gui_running")
    set udf
    set undodir=~/.vim/vimundo
endif

" no error bell
set noeb vb t_vb=

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

" allow non-saved buffers to go to background
set hidden

