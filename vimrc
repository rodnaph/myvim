
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nowrap
set cindent
set nobackup
set autoindent
set paste

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

" enable twig hightling (TODO)
au BufRead,BufNewFile *.twig set syntax=jinja

" phpunit shortcut
map :pu :PhpUnitFile

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

