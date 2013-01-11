""" Functions handling filetype customizations {{{
" PerformFtSpecificSetup [PUBLIC] BufEnter hook to perform ft specific setup: {{{
function! PerformFtSpecificSetup(filetype)
    if a:filetype != ""
        try
            let FtSetup = function("<SID>FtSetup_".a:filetype)
            call FtSetup()
        catch /E700/
            echohl ErrorMsg | echomsg "No FtSetup function for filetype ".a:filetype | echohl None
        catch /E117/
            echohl ErrorMsg | echomsg "Error occured when running FtSetup for filetype ".a:filetype | echohl None
        endtry
    endif
endfunction
"}}}

" Function: s:FtSetup_sql [PRIVATE] {{{
function! s:FtSetup_sql()
    map <F12> :call <SID>ExecuteSqlQuery()<CR>
endfunction
"}}}
"""}}}

""" Utility functions {{{

" s:ExecuteSqlQuery [PRIVATE] {{{
" Executes a query. If db params are not set, the user will be asked to provide
" them
function s:ExecuteSqlQuery()
    if !exists("b:dbu")
        let b:dbu = input("user> ")
    endif
    if !exists("b:rnd")
        let b:rnd = inputsecret("rnd> ")
    endif
    if !exists("b:db")
        let b:db = input("db> ")
    endif

    execute ":normal! (V):Clam sqlplus -S ".b:dbu."/".b:rnd."@".b:db."\<CR>"
"    execute ":normal! (V/;\<CR>:Clam sqlplus -S ".b:dbu."/".b:rnd."@".b:db."\<CR>"
endfunction
"}}}
"""}}}

