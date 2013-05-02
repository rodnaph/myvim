
augroup standard

    autocmd!

    " syntax highlighting for clojurescript
    autocmd BufRead,BufNewFile *.cljs set filetype=clojure
    autocmd BufRead,BufNewFile *.cljs set syntax=clojure
    autocmd BufRead,BufNewFile *.cljp set syntax=clojure

    " use scss for syntax highlighting xcss
    autocmd BufRead,BufNewFile *.xcss set syntax=scss

    " racket files, use scheme syntax highlighting
    autocmd BufRead,BufNewFile *.rkt set filetype=racket
    autocmd BufRead,BufNewFile *.rkt set syntax=scheme

    " 2 space indentation 
    autocmd Filetype scss setlocal ts=2 sts=2 sw=2
    autocmd Filetype racket setlocal ts=2 sts=2 sw=2
    autocmd Filetype clojure setlocal ts=2 sts=2 sw=2
    autocmd Filetype haskell setlocal ts=2 sts=2 sw=2
    autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
    autocmd Filetype less setlocal ts=2 sts=2 sw=2

    " strip trailing whitespace
    autocmd BufWritePre *.php :%s/\s\+$//e
    autocmd BufWritePre *.clj :%s/\s\+$//e
    autocmd BufWritePre *.cljs :%s/\s\+$//e
    autocmd BufWritePre *.js :%s/\s\+$//e
    autocmd BufWritePre *.css :%s/\s\+$//e
    autocmd BufWritePre *.twig :%s/\s\+$//e
    autocmd BufWritePre *.coffee :%s/\s\+$//e

    " twig highlighting plugin
    au BufRead,BufNewFile *.twig set filetype=htmljinja

augroup END

