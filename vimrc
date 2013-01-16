
" Plugins {{{

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:loaded_html_syntax_checker=1 " disables html checker

" init Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundles (https://github.com/gmarik/vundle)
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rodnaph/vim-phpunit'
Bundle 'rodnaph/vim-color-schemes'
Bundle 'vim-scripts/paredit.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-scripts/VimClojure'

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
nnoremap :ccc :ClearAllCtrlPCaches<CR>

" disable phpcs
let g:syntastic_phpcs_disable = 1

" }}}

" Core {{{

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

" }}}

" Visual {{{

" set colorscheme
set background=dark
colorscheme vanzan_color

" set macvim font
set gfn=Monaco:h12

" disable macvim toolbar
if has("gui_running")
    set guioptions=egmrt
endif

" no back files
set nobackup
set nowritebackup
set noswapfile

" }}}

" Editing {{{

" enable folding for vim files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

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

" try auto-indenting
set cindent
set autoindent

" }}}

" Key Mappings {{{

" ctrl-k to clear search highlighting
nnoremap <C-\> :nohl<CR>

" rename word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" slime
" pass while file to slime
:map <C-c>a ggvG<C-c><C-c>

" easy split navigation
nnoremap <C-h>  <C-w>h
nnoremap <C-j>  <C-w>j
nnoremap <C-k>  <C-w>k
nnoremap <C-l>  <C-w>l

" close all splits but current
nnoremap <C-u> :only<CR>

" In normal mode, space to center on current line
nnoremap <space> zz

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
nnoremap :bda :bufdo bdelete<CR>

" }}}

" File Types {{{

augroup standard

    autocmd!

    " syntax highlighting for clojurescript
    autocmd BufRead,BufNewFile *.cljs set filetype=clojure
    autocmd BufRead,BufNewFile *.cljs set syntax=clojure
    autocmd BufRead,BufNewFile *.cljp set syntax=clojure

    " syntax highlighting for xcss
    autocmd BufRead,BufNewFile *.xcss set syntax=scss

    " set 2 space indent for scss files
    autocmd Filetype scss setlocal ts=2 sts=2 sw=2

    " set a filetype for racket files
    autocmd BufRead,BufNewFile *.rkt set filetype=racket

    " syntax highlighting for racket files
    autocmd BufRead,BufNewFile *.rkt set syntax=scheme

    " 2 space indentation for racket files
    autocmd Filetype racket setlocal ts=2 sts=2 sw=2
    autocmd Filetype clojure setlocal ts=2 sts=2 sw=2

    " 2 space indent for haskell
    autocmd Filetype haskell setlocal ts=2 sts=2 sw=2

    " strip trailing whitespace
    autocmd BufWritePre *.php :%s/\s\+$//e
    autocmd BufWritePre *.clj :%s/\s\+$//e
    autocmd BufWritePre *.js :%s/\s\+$//e
    autocmd BufWritePre *.css :%s/\s\+$//e
    autocmd BufWritePre *.twig :%s/\s\+$//e

augroup END

" }}}

