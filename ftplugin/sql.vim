map <buffer> <F12> :call <SID>ExecuteSqlQuery()<CR>

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
    setlocal statusline=sqlplus
"    execute ":normal! (V/;\<CR>:Clam sqlplus -S ".b:dbu."/".b:rnd."@".b:db."\<CR>"
endfunction
"}}}
