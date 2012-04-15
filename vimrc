syntax on
filetype off

" enable 256 colors
set t_Co=256

" slimv config
let g:slimv_swank_clojure = '! xterm -e lein swank &'
let g:lisp_rainbow = 1
let g:slimv_repl_syntax = 1

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundles (https://github.com/gmarik/vundle)
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'chrismetcalf/vim-yankring'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/JavaScript-Indent'
"Bundle 'tpope/vim-fugitive'
"Bundle 'beyondwords/vim-twig'
"Bundle 'kana/vim-smartinput'
Bundle 'altercation/vim-colors-solarized'

Bundle 'rodnaph/vim-phpunit'
Bundle 'rodnaph/vim-color-schemes'

Bundle 'jpalardy/vim-slime'
Bundle 'vim-scripts/VimClojure'
"Bundle 'vim-scripts/slimv.vim'

filetype plugin indent on

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
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$\|classes$\|\.lein.*$',
  \ 'file': '\.swf$\|\.flv$\|\.gif$\|\.png$\|\.jpg$\|\.exe$\|\.so$\|\.dll$\|\.swp$\|\.DS_Store$\|\.jar$',
  \ 'link': 'bad_symbolic_link',
  \ }

" keep project directory as working dir
let g:ctrlp_working_path_mode = 0

" use filename matching by default
let g:ctrlp_by_filename = 1

" clear ctrlp cache
:noremap :ccc :ClearAllCtrlPCaches<CR>

" YankRing
let g:yankring_replace_n_pkey = '<C-Y>'
:map :yr :YRShow<CR>

" always use paste mode
set paste

" shortcut to close all buffers
:noremap :bda :bufdo bdelete<CR>

" symfony shortcuts from Resources
:noremap :sbe :e ../Entity<CR>
:noremap :sbc :e ../Controller<CR>

" svn blame on file
:noremap :sb ggdG:r!svn blame %<CR>

" disable phpcs
let g:syntastic_phpcs_disable = 1

" syntax highlighting for clojurescript
au BufRead,BufNewFile *.cljs set syntax=clojure
au BufRead,BufNewFile *.cljp set syntax=clojure

" syntax highlighting for xcss
au BufRead,BufNewFile *.xcss set syntax=scss

" shortcut to change tabs
:noremap <C-h> :tabp<CR>
:noremap <C-l> :tabn<CR>

" shortcut to run coding standards
:noremap :cs :!phpcs --standard=BoxUK %<CR>

" set colorscheme
set background=dark
colorscheme solarized

" enable copy-on-select in macvim
set go+=a

" set macvim font
set gfn=Monaco:h12

" disable macvim toolbar
if has("gui_running")
    set guioptions=egmrt
endif

" set 2 space indent for scss files
autocmd Filetype scss setlocal ts=2 sts=2 sw=2

