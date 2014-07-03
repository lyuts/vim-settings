if has("autocmd")
    augroup WhiteSpaceGrp
        au!
        highlight RedundantWhitespace ctermbg=red guibg=red
        " highlight trailing spaces
        au BufWinEnter * let b:mtrailingws=matchadd('RedundantWhitespace', '\s\+$', -1)
        " highlight tabs between spaces
        au BufWinEnter * let b:mtabbeforesp=matchadd('RedundantWhitespace', '\v(\t+)\ze( +)', -1)
        au BufWinEnter * let b:mtabaftersp=matchadd('RedundantWhitespace', '\v( +)\zs(\t+)', -1)
    augroup END


    """"""""""""'
    """" Restore cursor position on reopen
    """""""""""""
    set viewoptions=cursor,folds

    augroup ViewGrp
        au!
        au BufLeave,WinLeave,BufWritePost * if getftype(expand("%:p"))!="" | silent mkview
"        au BufEnter,WinEnter * if getftype(expand("%:p"))!="" | silent loadview
        au BufEnter * if getftype(expand("%:p"))!="" | silent loadview

        " disable line width limit for non source code files
        " Note: this breaks netrw/NERDTree reuse of current window.
"        au BufEnter,WinEnter,BufReadPost * if index(['sh', ''], &ft) != -1 | set textwidth=0 | else | set textwidth=80

        au BufEnter * call HLMarks()
    augroup END

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    if v:progname =~? "vim"
        au BufWinEnter * set mouse=""
    endif
endif " has("autocmd")
