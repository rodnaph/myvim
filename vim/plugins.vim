
" enable sings for syntastic
let g:syntastic_enable_signs=1

" auto-jump to errors
let g:syntastic_auto_jump=1

" add errors to location list
let g:syntastic_auto_loc_list=1

" disable html checking (makes crazy)
let g:loaded_html_syntax_checker=1 " disables html checker

" keep yankring history in vim folder
let g:yankring_history_dir = '$HOME/.vim/yankring/'

" disable <C-p> for yankring (leave to ctrlp)
let g:yankring_replace_n_pkey = '<noop>'

" init Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundles (https://github.com/gmarik/vundle)
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'rodnaph/vim-color-schemes'
Bundle 'vim-scripts/paredit.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'danro/rename.vim'
Bundle 'vim-scripts/VimClojure'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'rodnaph/jinja.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kchmck/vim-coffee-script'

" Enable YCM for MacVim
if has("gui_macvim")
    Bundle 'Valloric/YouCompleteMe'
endif

" disable jump to buffer
let g:ctrlp_jump_to_buffer = 0

" custom filetype ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|build$\|classes$\|target$\|node_modules$\|vendor$\|\.lein.*$',
  \ 'file': '\.swf$\|\.flv$\|\.gif$\|\.png$\|\.jpg$\|\.exe$\|\.so$\|\.dll$\|\.swp$\|\.DS_Store$\|\.jar$',
  \ 'link': 'bad_symbolic_link',
  \ }

" keep project directory as working dir
let g:ctrlp_working_path_mode = 0

" use filename matching by default
let g:ctrlp_by_filename = 1

" disable phpcs
let g:syntastic_phpcs_disable = 1

" twig highlighting plugin
au BufRead,BufNewFile *.twig set filetype=htmljinja

