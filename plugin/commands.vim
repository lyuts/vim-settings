" remove blank lines
command! -range=% DBL        :<line1>,<line2>g/^\s*$/:delete
" remove trailing white spaces
command! -range=% DTB        :<line1>,<line2>s/\s\s*$//

""" Artisitc Style
command! Beautify :w<CR>:!astyle -s4 -cKLvjbUH --mode=c --align-pointer=type %<CR>:edit!<CR>

""" Check spelling: ru, en_us, ...
command! -nargs=1 SpellCheck :setlocal spell spelllang=<args>
"map ruspell :setlocal spell spelllang=ru<CR>
"map enspell :setlocal spell spelllang=en_us<CR>
""""""

if v:progname =~? "vimdiff"
    command! -range DiffPut :<line1>,<line2>diffput
    command! -range DiffGet :<line1>,<line2>diffget
endif

" Source visual selection to immediately take effect
command! -range=% Source     :<line1>,<line2>y|execute @@
