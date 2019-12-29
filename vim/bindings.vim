
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
command! BD :%bd

command! UUID :r !uuidgen | tr "[:upper:]" "[:lower:]"

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
cnoremap <BS> <Nop>
nnoremap <BS> <Nop>

" Newlines in insert/command mode
inoremap <C-space> <CR>
cnoremap <C-space> <CR>
inoremap <CR> <Nop>

" Start commands with ctrl-c
nnoremap <C-c> :

" Save all buffers
nnoremap <C-s> :wa<CR>
inoremap <C-s> <ESC>:wa<CR>

" Scroll window left/right
nnoremap <S-H> 2zh
nnoremap <S-L> 2zl

" C-r replace selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Include hover statement
nmap <Leader>h :call phpactor#Hover()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Open navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Format JSON
nnoremap :json :%!python -m json.tool
