noremap // :Commentary<CR>
noremap ` :edit <C-R>=sort([expand("~"), expand("%:h")])[-1]<CR><CR> :set mouse=a<CR>

nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
let g:C_f_cmd = "find . -type f -iwholename '*INPUT*' | egrep -v \"(svn|~)\""
"map <C-f> :call ExecSearch(substitute(g:C_f_cmd, "INPUT", input("File to find => "), "g"), "", "%f")<CR>

noremap <S-F1> :execute "".input("")<CR>
noremap <F1> :echo "F1 - help\nF2 - MarksBrowser\nF3 - Rgrep\nF4 - HexView\nF5 - man\nF6 - Cscope\nF7 - filencoding\nF8 - RotateEnc\nF9 - make\nF10 - line_num\nF11 - find file"<CR>

nnoremap <silent> <F2> :ToggleLocalMark<CR>
nnoremap <silent> <C-F2> :ToggleGlobalMark<CR>

nnoremap <silent> <S-F2> :MarksBrowser<CR>
nnoremap <silent> <S-A-F2> :call clearmatches()<CR>


"nnoremap <F3> :Rgrep -I<CR>
"nnoremap <S-F3> :Rgrep -iI<CR>

nnoremap <F3> :call VDEGrepProjectFiles(1)<CR>
nnoremap <S-F3> :call VDEGrepProjectFiles(0)<CR>

"command! StripProjectRoot :setlocal modifiable<CR>:execute ":%s#^".GetProjectParamByFile(expand("%:h"), "Path")."/##g"<CR>:setlocal nomodifiable<CR>

nnoremap <F4> :call HexView()<CR>
nnoremap <S-F4> :A<CR>

nnoremap <F5> :call ExecSearch("gid -r ".input("Pattern: ", expand("<cword>")), "", "")<CR>

nnoremap <F6> :cs find s <C-R>=expand("<cword>")<CR><CR>

nnoremap <F7> :let &fileencoding=&encoding<CR>

nnoremap <F8> :call RotateEnc()<CR>

nnoremap <F9> :echo "Shortcut is not used!"<CR>
"""
"nnoremap <F9> :write<CR>:make<CR>

"nnoremap <F9> :execute RunMake()<CR><C-l><CR>
""""
nnoremap <F10> :echo "Shortcut is not used!"<CR>
"nnoremap <F10> :%s/^/\=line('.').' '/<CR>
"nnoremap <F10> :let t=expand("<cword>")<CR>:execute ":".line(".")."s/".t."/".strftime('%b %d %Y', t)."/"<CR>

"nnoremap <F11> :echo "Not used!"<CR>
nnoremap <F11> :call ExecSearch(substitute(g:C_f_cmd, "INPUT", input("File to find => "), "g"), "", "%f")<CR>

"nnoremap <F12> :execute Run()<CR>

" Folding: {{{
nnoremap <C-Left> :set foldenable<CR>:set foldmethod=manual<CR>[{jv]}k:fold<CR>
nnoremap <C-Right> zo

" Window resizing: {{{
nnoremap <C-M-Up> :resize -1<CR>
nnoremap <C-M-Down> :resize +1<CR>
nnoremap <C-M-Left> :vertical resize -1<CR>
nnoremap <C-M-Right> :vertical resize +1<CR>
"}}}



"""""""""""
""" VIMDIFF
"""""""""""
if v:progname =~? "vimdiff"
    map <F1> :echo "F1 - help\nF2 - MarksBrowser\nF3 - Rgrep\nF4 - HexView\nF5 - man\nF6 - DiffPut\nF7 - DiffGet\nF8 - RotateEnc\nF9 - make\nF10 - line_num\n"<CR>
    map <F6> :DiffPut<CR>
    map <F7> :DiffGet<CR>
""""""""
""" GVIM
""""""""
elseif v:progname =~? "gvim"
    """"""""
    """ MAPS
    """"""""
"    map <C-Tab> :BufExplorer<CR>

    """ Alt + <Num>
    map <A-0> :NERDTreeToggle .<CR>
    map <A-1> :execute ShowMakeResults()<CR><C-l>
    "map <A-2> :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
"    map <A-2> :TlistToggle<CR>:TlistAddFiles %<CR>
    map <A-2> :TagbarToggle<CR>
    map <A-3> :echo "Shortcut is not used!"<CR>
    map <A-4> :echo "Shortcut is not used!"<CR>
    map <A-5> :echo "Shortcut is not used!"<CR>
    map <A-6> :echo "Shortcut is not used!"<CR>
    map <A-7> :echo "Shortcut is not used!"<CR>
    map <A-8> :echo "Shortcut is not used!"<CR>
    map <A-9> :echo "Shortcut is not used!"<CR>

"    let g:vimim_ctrl_space_to_toggle = 0
    imap <C-Space> <C-X><C-O>
    " Open new tab
    map <C-t> :tabnew <CR>
    imap <C-t> <ESC>:tabnew <CR>

"""""""
""" VIM
"""""""
elseif v:progname =~? "vim"
    """"""""
    """ MAPS
    """"""""
    " Ctrl + Tab
"    map <C-I> :BufExplorer<CR>
    """ Alt + <Num>
    map 0 :NERDTreeToggle .<CR>
    map 1 :execute ShowMakeResults()<CR><C-l>
    "map 2 :TlistToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
"    map 2 :TlistToggle<CR>:TlistAddFiles %<CR>
    map 2 :TagbarToggle<CR>
    map 3 :echo "Shortcut is not used!"<CR>
    map 4 :silent call ExecSearch("cat tags.files \| xargs egrep -nIi '\\\\\(todo\|fixme\|bug\|warning\)' --include '*'", "", "")<CR><Up><CR>
    map 5 :echo "Shortcut is not used!"<CR>
    map 6 :echo "Shortcut is not used!"<CR>
    map 7 :echo "Shortcut is not used!"<CR>
    map 8 :echo "Shortcut is not used!"<CR>
    map 9 :echo "Shortcut is not used!"<CR>

"    noremap <C-/> :Search<Space>
endif

" format selection
vmap Q gq
" format paragraph
nmap Q gqap

" stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" easy window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" easy tab navigation
"map <S-h> gT
"map <S-j> gT
"map <S-k> gt
"map <S-l> gt

nmap <silent> ,/ :noh<CR>

" in case you forgot sudo
cmap w!! w !sudo tee % >/dev/null

" see: http://vim.wikia.com/wiki/Mapping_fast_keycodes_in_terminal_Vim
"if &term == "rxvt" || &term == "screen"
"    map <Esc>[23~ <S-F1>
"    map <Esc>[24~ <S-F2>
"    map <Esc>[25~ <S-F3>
"    map <Esc>[26~ <S-F4>
"    map <Esc>[28~ <S-F5>
"    map <Esc>[29~ <S-F6>
"    map <Esc>[31~ <S-F7>
"    map <Esc>[33~ <S-F8>
"    map <Esc>[33~ <S-F9>
"    map <Esc>[34~ <S-F10>
"    map <Esc>[23$ <S-F11>
"    map <Esc>[24$ <S-F12>
"endif
