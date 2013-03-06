
" set colorscheme
set background=dark
colorscheme vanzan_color

" vanzan color adjustments
hi Pmenu guifg=#f0f0f0 guibg=#706080
hi PmenuSel guifg=#706080 guibg=#c4c2c0

" set macvim font
set gfn=Monaco:h12

" disable macvim toolbar
if has("gui_running")
    set guioptions=egmrt
endif

highlight clear SignColumn

