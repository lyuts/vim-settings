function! GetSelectionText() range
    let lines = getline(a:firstline, a:lastline)
    return join(lines, "\n")
endfunction

function! VimuxRun(text)
    call VimuxOpenRunner()
	call VimuxSendKeys('"'.escape(substitute(a:text, ";$", ";;", ""), '"`').'"')
    call VimuxSendKeys("Enter")
endfunction

noremap <F12> :call VimuxRun(GetSelectionText())<CR>
