
" disable Ex mode
nnoremap Q <nop>

" disable man-page shortcut
nnoremap <S-k> <nop>

" clear search highlighting
nnoremap <C-\> :nohl<CR>

" rename word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" easy split navigation
nnoremap <C-h>  <C-w>h
nnoremap <C-j>  <C-w>j
nnoremap <C-k>  <C-w>k
nnoremap <C-l>  <C-w>l

" close all splits but current
nnoremap <C-u> :only<CR>

" use H and L for moving sexps up/down in paredit
nnoremap <S-h> ,<
nnoremap <S-l> ,>

" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" shortcut to close all buffers
command! BD bufdo bdelete

" clear ctrlp cache
nnoremap :ccc :ClearAllCtrlPCaches<CR>

" show YankRing
nnoremap :yr :YRShow<CR>

" Sudo write
cmap w!! w !sudo tee % > /dev/null <CR>

" Eval expression under cursor
nnoremap <C-e> :Eval<CR>

" Eval whole file
nnoremap E :%Eval<CR>

" W to paren wrap
nnoremap W :normal,W<CR>

" blank current line
nnoremap <C-d> 0d$

" toggle case of current word
nnoremap Z viw~

" disable backspace
inoremap <BS> <Nop>

" Newlines in insert mode
inoremap <C-space> <CR>
inoremap <CR> <Nop>

" Start commands with ctrl-c
nnoremap <C-c> :

