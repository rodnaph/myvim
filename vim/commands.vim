
augroup standard

    autocmd!

    " only show cursorline for current window
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline

    " terraform
    autocmd BufRead,BufNewFile *.tfvars set filetype=terraform
    autocmd BufRead,BufNewFile *.hcl set filetype=terraform

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
    autocmd BufWritePre *.tf :%s/\s\+$//e
    autocmd BufWritePre *.hcl :%s/\s\+$//e
    autocmd BufWritePre *.tfvars :%s/\s\+$//e
    autocmd BufWritePre *.yml :%s/\s\+$//e
    autocmd BufWritePre *.yaml :%s/\s\+$//e

    " twig highlighting plugin
    au BufRead,BufNewFile *.twig set filetype=htmljinja

    " Wrap at 80 chars for markdown files
    au Filetype Markdown setlocal wrap textwidth=80

augroup END

" ===================================================================================================================================

augroup javascript

    autocmd!

    " Static analysis
    autocmd BufEnter,BufNew *.js nnoremap <buffer> <C-s> :Dispatch node node_modules/eslint/bin/eslint.js --quiet %<CR>

    " Jasmine testing by default
    autocmd BufEnter,BufNew *.js nnoremap <buffer> <C-t> :Dispatch bin/jasmine %<CR>

    " Jest 
    autocmd BufEnter,BufNew *.test.js nnoremap <buffer> <C-t> :Dispatch node_modules/jest/bin/jest.js --no-colors %<CR>

augroup END

" ===================================================================================================================================

augroup php

    autocmd!

    " Use PHPActor for PHP completion
    autocmd FileType php setlocal omnifunc=phpactor#Complete

    " C-S in a file to run static analysis
    autocmd BufEnter,BufNew *.php nnoremap <buffer> <C-s> :Dispatch vendor/bin/phpstan analyze -c phpstan.neon %<CR>

     " C-T in a test/spec to run the entire file
    autocmd BufEnter,BufNew *Test.php nnoremap <buffer> <C-t> :Dispatch docker compose exec bindhq-fpm rm -rf var/cache/test/twig ; docker compose exec bindhq-fpm php -d memory_limit=-1 vendor/bin/phpunit --colors=never --order-by default %<CR>
    autocmd BufEnter,BufNew *Spec.php nnoremap <buffer> <C-t> :Dispatch docker compose exec bindhq-fpm vendor/bin/phpspec run %<CR>

    " S-T on a test/spec name to run it individually
    autocmd BufEnter,BufNew *Test.php nnoremap <S-T> :Dispatch docker compose exec bindhq-fpm rm -rf var/cache/test/twig ; docker compose exec bindhq-fpm php -d memory_limit=-1 vendor/bin/phpunit --colors=never --order-by default --filter=<cword> %<CR>
    autocmd BufEnter,BufNew *Spec.php nnoremap <S-T> :execute 'Dispatch docker compose exec bindhq-fpm vendor/bin/phpspec run %:' . line('.')<CR>

    " PHP
    autocmd BufEnter,BufNew *.php iabbrev ro readonly
    autocmd BufEnter,BufNew *.php iabbrev pubic public
    autocmd BufEnter,BufNew *.php iabbrev wr willReturn
    autocmd BufEnter,BufNew *.php iabbrev yied yield
    autocmd BufEnter,BufNew *.php iabbrev iterabe iterable
    autocmd BufEnter,BufNew *.php iabbrev nul null
    autocmd BufEnter,BufNew *.php iabbrev psf public static function(): void<cr>{<cr>}<Up><Up><esc>f(i
    autocmd BufEnter,BufNew *.php iabbrev pf public function(): void<cr>{<cr>}<Up><Up><esc>f(i
    autocmd BufEnter,BufNew *.php iabbrev prf private function(): void<cr>{<cr>}<Up><Up><esc>f(i
    autocmd BufEnter,BufNew *.php iabbrev pft public function test(): void<cr>{<cr>}<Up><Up><esc>f(i
    autocmd BufEnter,BufNew *.php iabbrev pfc public function __construct(<cr>) {<cr>}
    autocmd BufEnter,BufNew *.php iabbrev pfi public function __invoke(): void<cr>{<cr>}<Up><Up><esc>f(i
    autocmd BufEnter,BufNew *.php iabbrev uid Uuid::v4()

    " PHPUnit
    autocmd BufEnter,BufNew *Test.php iabbrev tas self::assertSame
    autocmd BufEnter,BufNew *Test.php iabbrev tae self::assertEquals
    autocmd BufEnter,BufNew *Test.php iabbrev tac self::assertCount
    autocmd BufEnter,BufNew *Test.php iabbrev tan self::assertNull
    autocmd BufEnter,BufNew *Test.php iabbrev tann self::assertNotNull
    autocmd BufEnter,BufNew *Test.php iabbrev tee $this->expectException(\Exception::class);<cr>$this->expectExceptionMessage('');
    autocmd BufEnter,BufNew *Test.php iabbrev crg /** @return \Generator<array-key, array{}> */<esc>0f{a
    autocmd BufEnter,BufNew *Test.php iabbrev cdp /** @dataProvider*/<Left><Left>
    autocmd BufEnter,BufNew *Test.php iabbrev tpr $this->prophesize
    autocmd BufEnter,BufNew *Test.php iabbrev tprr $this->prophesize(::class)->reveal()<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
    autocmd BufEnter,BufNew *Test.php iabbrev yie yield [];<Left><Left>

augroup END

" ===================================================================================================================================

augroup bindhq

    autocmd!

    " BindHQ
    autocmd BufEnter,BufNew *Test.php iabbrev cut use PHPUnit\Framework\TestCase;<cr>use Prophecy\PhpUnit\ProphecyTrait;<cr><cr>class x extends TestCase<cr>{<cr>use ProphecyTrait;<cr>}
    autocmd BufEnter,BufNew *Test.php iabbrev cft class x extends FunctionalTestCase<cr>{<cr>}

augroup END
