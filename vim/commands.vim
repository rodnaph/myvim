
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
    autocmd Filetype coffee setlocal ts=2 sts=2 sw=2

    " strip trailing whitespace
    autocmd BufWritePre *.php :%s/\s\+$//e
    autocmd BufWritePre *.clj :%s/\s\+$//e
    autocmd BufWritePre *.js :%s/\s\+$//e
    autocmd BufWritePre *.css :%s/\s\+$//e
    autocmd BufWritePre *.twig :%s/\s\+$//e
    autocmd BufWritePre *.coffee :%s/\s\+$//e

augroup END

