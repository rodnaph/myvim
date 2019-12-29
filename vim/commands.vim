
augroup standard

    autocmd!

    " only show cursorline for current window
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline

    " terraform
    autocmd BufRead,BufNewFile *.tfvars set filetype=terraform

    " markdown
    autocmd BufRead,BufNewFile *.md set filetype=Markdown

    " scala
    autocmd BufRead,BufNewFile *.scala set filetype=scala

    " clojurescript
    autocmd BufRead,BufNewFile *.cljs set filetype=clojure
    autocmd BufRead,BufNewFile *.cljs set syntax=clojure

    " edn
    autocmd BufRead,BufNewFile *.edn set filetype=clojure
    autocmd BufRead,BufNewFile *.edn set syntax=clojure

    " use scss for syntax highlighting xcss
    autocmd BufRead,BufNewFile *.xcss set syntax=scss

    " racket files, use scheme syntax highlighting
    autocmd BufRead,BufNewFile *.rkt set filetype=racket
    autocmd BufRead,BufNewFile *.rkt set syntax=scheme

    " JSX
    autocmd BufRead,BufNewFile *.jsx set filetype=JSX
    autocmd BufRead,BufNewFile *.jsx set syntax=javascript

    " 2 space indentation 
    autocmd Filetype scss setlocal ts=2 sts=2 sw=2
    autocmd Filetype racket setlocal ts=2 sts=2 sw=2
    autocmd Filetype clojure setlocal ts=2 sts=2 sw=2
    autocmd Filetype haskell setlocal ts=2 sts=2 sw=2
    autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
    autocmd Filetype less setlocal ts=2 sts=2 sw=2
    autocmd Filetype vim setlocal ts=2 sts=2 sw=2
    autocmd Filetype JSX setlocal ts=2 sts=2 sw=2
    autocmd Filetype hcl setlocal ts=2 sts=2 sw=2
    autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

    " strip trailing whitespace
    autocmd BufWritePre *.php :%s/\s\+$//e
    autocmd BufWritePre *.clj :%s/\s\+$//e
    autocmd BufWritePre *.cljs :%s/\s\+$//e
    autocmd BufWritePre *.js :%s/\s\+$//e
    autocmd BufWritePre *.css :%s/\s\+$//e
    autocmd BufWritePre *.twig :%s/\s\+$//e
    autocmd BufWritePre *.coffee :%s/\s\+$//e
    autocmd BufWritePre *.py :%s/\s\+$//e
    autocmd BufWritePre *.sql :%s/\s\+$//e
    autocmd BufWritePre *.jsx :%s/\s\+$//e
    autocmd BufWritePre *.scala :%s/\s\+$//e
    autocmd BufWritePre *.sbt :%s/\s\+$//e

    " twig highlighting plugin
    au BufRead,BufNewFile *.twig set filetype=htmljinja

    " Wrap at 80 chars for markdown files
    au Filetype Markdown setlocal wrap textwidth=80

augroup END

