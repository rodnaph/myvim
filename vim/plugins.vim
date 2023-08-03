
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

let g:vdebug_options = {
\   'port' : 9003,
\   'path_maps': {
\       "/srv/app": "/Users/rod/Code/owsy/bindhq-webapp",
\   },
\   'layout': 'compact',
\}

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" disable CTRL-h shortcut
let g:php_manual_online_search_shortcut = ''

" init Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'

" Editing
Bundle 'easymotion/vim-easymotion'

" Utils
Bundle 'junegunn/fzf'
Bundle 'junegunn/fzf.vim'
Bundle 'danro/rename.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-dispatch'
"Bundle 'ruanyl/vim-gh-line'

if has("gui_macvim")
  Bundle 'joonty/vdebug'
endif

" Git
Bundle 'tpope/vim-fugitive'

" Visual
"Bundle 'rodnaph/vim-color-schemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'StanAngeloff/php.vim'
Bundle 'morhetz/gruvbox'

" Syntax/Language
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'rodnaph/jinja.vim'
Bundle 'mattn/emmet-vim'
Bundle 'hashivim/vim-terraform'
Bundle 'chr4/nginx.vim'
Bundle 'alvan/vim-php-manual'

" PHP
Bundle 'phpactor/phpactor'

" Clojure
"Bundle 'vim-scripts/paredit.vim'
"Bundle 'guns/vim-clojure-static'
Bundle 'clojure-vim/clojure.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'venantius/vim-cljfmt'

" Enable YCM for MacVim
if has("gui_macvim")
  Bundle 'ycm-core/YouCompleteMe'

  let g:ycm_auto_trigger = 0
  let g:ycm_key_invoke_completion = '<C-Enter>'
endif

" fzf
let g:fzf_history_dir = '~/.config/fzf/fzf-history'

" disable jump to buffer
let g:ctrlp_jump_to_buffer = 0

" custom filetype ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  'public\/bundles$\|var$\|_site$\|\.git$\|\.hg$\|\.svn$\|build$\|classes$\|target$\|node_modules$\|vendor$\|\.lein.*$\|out$\|cordova/platforms$\|cordova/plugins$',
  \ 'file': '\.swf$\|\.flv$\|\.gif$\|\.png$\|\.jpg$\|\.exe$\|\.so$\|\.dll$\|\.swp$\|\.DS_Store$\|\.jar$',
  \ 'link': 'bad_symbolic_link',
  \ }

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" keep project directory as working dir
let g:ctrlp_working_path_mode = 'ra'

" use filename matching by default
let g:ctrlp_by_filename = 1

" disable phpcs
let g:syntastic_phpcs_disable = 1

" editorconfig compat with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Dispatch.vim
let g:dispatch_quickfix_height=20
