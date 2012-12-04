
syntax on
filetype off

" enable 256 colors
set t_Co=256

" ensure unix line endings
set ff=unix

" slimv config
let g:slimv_swank_clojure = '! xterm -e lein swank &'
let g:lisp_rainbow = 1
let g:slimv_repl_syntax = 1

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:loaded_html_syntax_checker=1 " disables html checker

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

Bundle 'vim-scripts/paredit.vim'
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
noremap <C-\> :nohl<CR>

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

" show filename for windows
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" rename word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" slime
" pass while file to slime
:map <C-c>a ggvG<C-c><C-c>

" ctrlp
" disable jump to buffer
let g:ctrlp_jump_to_buffer = 0

" custom filetype ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$\|classes$\|node_modules$\|vendor$\|\.lein.*$',
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
au BufRead,BufNewFile *.cljs set filetype=clojure
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
"colorscheme solarized
"colorscheme molokai
colorscheme vanzan_color

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

" set a filetype for racket files
au BufRead,BufNewFile *.rkt set filetype=racket

" syntax highlighting for racket files
au BufRead,BufNewFile *.rkt set syntax=scheme

" 2 space indentation for racket files
autocmd Filetype racket setlocal ts=2 sts=2 sw=2
autocmd Filetype clojure setlocal ts=2 sts=2 sw=2

" 2 space indent for haskell
autocmd Filetype haskell setlocal ts=2 sts=2 sw=2

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" reload vimrc when edited
autocmd! BufWritePost vimrc source ~/.vimrc

" easy split navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" close all splits but current
nmap <C-o> :only<CR>


