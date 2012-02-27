
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

" ctrl-k to clear search highlighting
noremap <C-K> :nohl<CR>

" try auto-indenting
set cindent
set autoindent

" no back files
set nobackup
set nowritebackup
set noswapfile

" status line
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntax highlighting
syntax on
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

" show filename for windows
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" rename word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" phpunit shortcut
map :pu :PhpUnitFile<CR><CR>

" phing
command PhingClearCache execute "!phing clearcache"
command PhingVendors execute "!phing vendors"

map :pc :PhingClearCache<CR>
map :pv :PhingVendors<CR>

" lein
command LeinTest execute "!lein test"

map :lt :LeinTest<CR>

" slime
" pass while file to slime
:map <C-c>a ggvG<C-c><C-c>

" ctrlp
" disable jump to buffer
let g:ctrlp_jump_to_buffer = 0
" custom filetype ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$\|classes$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.swp$\|\.DS_Store$\|\.jar$',
  \ 'link': 'bad_symbolic_link',
  \ }
" keep project directory as working dir
let g:ctrlp_working_path_mode = 0

" YankRing
let g:yankring_replace_n_pkey = '<C-Y>'
:map :yr :YRShow<CR>

" javascript/html indenting
so $HOME/.vim/indent/javascript.vim

" always use paste mode
set paste

" shortcut to close all buffers
:noremap :bda :bufdo bdelete<CR>

