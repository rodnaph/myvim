" enable uuid
py import uuid

" do not be Vi compatible
set nocompatible

" re-read changed files automatically
set autoread

" turn filetype options on
filetype plugin indent on

" enable 256 colors
set t_Co=256

" ensure unix line endings
set ff=unix

"" always use paste mode
"set paste
" disabled as it somehow sets expandtab to be off

" enable persistent undo
if has("gui_running")
    set udf
    set undodir=~/.vim/vimundo
endif

" no error bell
set noeb vb t_vb=

" last window always has status line
set laststatus=2

" show filename for windows
set cursorline

" no back files
set nobackup
set nowritebackup
set noswapfile

" allow non-saved buffers to go to background
set hidden

" adjust preview window height
set previewheight=20

" new splits go to the bottom
set splitbelow

" new vsplits go to the right
set splitright

" netrw
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" no newlines at end of file
set nofixendofline
