
" disable SQLComplete
let g:loaded_sql_completion=1

" enable sings for syntastic
let g:syntastic_enable_signs=1

" auto-jump to errors
let g:syntastic_auto_jump=1

" syntax check on-open
let syntastic_check_on_open=1

" disable HTML validation
let syntastic_html_checkers=[]

" add errors to location list
let g:syntastic_auto_loc_list=1

" keep yankring history in vim folder
let g:yankring_history_dir = '$HOME/.vim/yankring/'

" disable <C-p> for yankring (leave to ctrlp)
let g:yankring_replace_n_pkey = '<noop>'

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif

let g:vdebug_options["break_on_open"] = 0

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" init Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'

" Utils
Bundle 'kien/ctrlp.vim'
Bundle 'danro/rename.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'joonty/vdebug'
Bundle 'tpope/vim-vinegar'

" Visual
Bundle 'rodnaph/vim-color-schemes'
Bundle 'Lokaltog/vim-powerline'
Bundle '2072/vim-syntax-for-PHP.git'

" Syntax/Language
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'rodnaph/jinja.vim'
Bundle 'mattn/emmet-vim'

" Clojure
Bundle 'vim-scripts/paredit.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'venantius/vim-cljfmt'

" Enable YCM for MacVim
if has("gui_macvim")
    Bundle 'Valloric/YouCompleteMe'
endif

" disable jump to buffer
let g:ctrlp_jump_to_buffer = 0

" custom filetype ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '_site$\|\.git$\|\.hg$\|\.svn$\|build$\|classes$\|target$\|node_modules$\|vendor$\|\.lein.*$\|out$',
  \ 'file': '\.swf$\|\.flv$\|\.gif$\|\.png$\|\.jpg$\|\.exe$\|\.so$\|\.dll$\|\.swp$\|\.DS_Store$\|\.jar$',
  \ 'link': 'bad_symbolic_link',
  \ }

" keep project directory as working dir
let g:ctrlp_working_path_mode = 0

" use filename matching by default
let g:ctrlp_by_filename = 1

" disable phpcs
let g:syntastic_phpcs_disable = 1

