let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript', 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|html$\|man$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.a$\|\.o$\|\~$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

let g:ctrlp_root_markers = [ 'vde.index', 'vde.tags' ]

noremap <C-@> :CtrlPBuffer<CR>

"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g "" '
