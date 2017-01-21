" vim:tw=80:foldmethod=marker

let mapleader = "\<Space>"

" vundle: {{{
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

command! -nargs=1 Off silent echo <args>

Plugin 'gmarik/Vundle.vim'
" config
Plugin 'lyuts/vim-settings', { 'pinned' : 1 }

"fork of a.vim with imap's disabled
Plugin 'fanchangyong/a.vim'

Off 'FriedSock/smeargle'
Off 'Shougo/neocomplcache.vim'
Off 'Shougo/neocomplete.vim'
Off 'Shougo/neosnippet.vim'
Off 'Valloric/YouCompleteMe'
Off 'ferranpm/vim-colorcode'
Off 'fmoralesc/vim-pad'
Off 'gregsexton/gitv'
Off 'jcfaria/Vim-R-plugin'
Off 'jiangmiao/auto-pairs'
Off 'justincampbell/vim-eighties'
Off 'krisajenkins/vim-pipe'
Off 'maxbrunsfeld/vim-yankstack'
Off 'sjl/clam.vim'
Off 'vim-scripts/CSApprox'
Off 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'
Off 'vim-scripts/Marks-Browser'
Off 'vim-scripts/SemanticHL'
Off 'vim-scripts/SyntaxAttr.vim'
Off 'vim-scripts/ZoomWin'
Off 'vim-scripts/diffchar.vim'
Off 'vim-scripts/grep.vim'
Off 'vim-scripts/gtags.vim'
Off 'vim-scripts/lua.vim'
Off 'vim-scripts/taglist.vim'
Off 'xolox/vim-lua-inspect'
Off 'xuhdev/vim-latex-live-preview'
Off 'zhaocai/GoldenView.Vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'Raimondi/delimitMate'
Plugin 'Rykka/easydigraph.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Stormherz/tablify'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux'
Plugin 'bkad/CamelCaseMotion'
Plugin 'chrisbra/NrrwRgn'
Plugin 'chrisbra/csv.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'deris/vim-shot-f'
Plugin 'dyng/ctrlsf.vim'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/VimCalc'
Plugin 'h1mesuke/vim-unittest'
Plugin 'hlissner/vim-multiedit'
Plugin 'itchyny/calendar.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'jtdowney/vimux-cargo'
Plugin 'junegunn/vim-scroll-position', { 'pinned' : 1 }
Plugin 'kana/vim-textobj-user'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kien/tabman.vim'
"Plugin 'kopischke/vim-fetch'
Plugin 'lyuts/vim-markHL'
Plugin 'lyuts/vim-mymaps'
Plugin 'lyuts/vim-rtags', { 'pinned' : 1 }
Plugin 'lyuts/vim-vde'
Plugin 'majutsushi/tagbar'
Plugin 'markwu/ZoomWin'
Plugin 'mattboehm/vim-unstack'
Plugin 'mattn/ctrlp-mark'
Plugin 'mbbill/undotree'
Plugin 'mileszs/ack.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'rainerborene/vim-timetap'
Plugin 'rking/ag.vim'
Plugin 'rust-lang/rust.vim', { 'name' : 'moz_rust.vim' }
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'someboddy/vim-vebugger'
Plugin 'szw/vim-ctrlspace'
Plugin 'terryma/vim-expand-region'
Plugin 'thinca/vim-qfreplace'
Plugin 'tomasr/molokai'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'troydm/shellasync.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-jp/vital.vim'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/DirDiff.vim'
Plugin 'vim-scripts/argwrap.vim'
Plugin 'vim-scripts/diffchanges.vim'
Plugin 'vim-scripts/hexman.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/multisearch.vim'
Plugin 'vim-scripts/progressbar-widget'
Plugin 'vim-scripts/summerfruit256.vim'
Plugin 'vim-scripts/utl.vim'
Plugin 'vim-scripts/vimprj'
Plugin 'vim-scripts/vimwiki'
Plugin 'vim-scripts/xml.vim'
Plugin 'wting/rust.vim'
Plugin 'xuhdev/vim-IniParser'

call vundle#end()
filetype plugin indent on     " required
" }}}

" Shortcuts: {{{
" Formatting: {{{
" C-a - Increas num in line
" C-x - Decrease num in line
" gq - reformat range according to settings
"}}} Formatting
" Marks: {{{
" m{char} - place mark
" '{char} - go to mark
"}}} Marks
" Navigation: {{{
" K - man
" gd - go to local definition.
" gf - go to file under cursor.
" [<opening char> - jump to the nearest opening char.
" ]<closing char> - jump to the nearest closing char.
" [I - all lines in current file that containt current word.
" Vex - Vertical split with FS tree.
" Sex - Horizontal split with FS tree.
"}}} Navigation
" Spelling: {{{
"""
""" ]s - next misspelled word
""" [s - prev misspelled word
""" zg - add misspelled word to dic
""" zw - remove misspelled word from dic
""" z= - suggestions
"}}} Spelling
"}}} Shortcuts

""""""""""""""""""""""""""
""" Basic editing settings: {{{
""""""""""""""""""""""""""
" This must be first, because it changes other options as a side effect.
set nocompatible
set nomodeline
set autoindent
set showmode
set showcmd
set hidden
set nocursorline
set visualbell
set ttyfast
set ruler
set history=50
set incsearch
set noshowmatch " show the cursor at opening '{'
""" Tab settings
" 1 tab on indentation = 4 spaces
set shiftwidth=4
" makes spaces feel like tabs
set softtabstop=4
" 1 tab = 4 spaces
set tabstop=4
" spaces instead of tab (use :retab)
set expandtab
set wrap
" enable row numbers on the left
set number
set rnu
set nuw=1
"set foldmethod=indent
set foldmethod=marker
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set laststatus=2
set noignorecase
set backup
set noswapfile
"}}}

if has("unix")
    let g:OS = substitute(system('uname'), "\n", "", "")
    if g:OS == "Linux"
        set encoding=utf-8
        set termencoding=utf-8
    elseif g:OS == "FreeBSD"
        set encoding=utf-8
        set termencoding=utf-8
        let g:Grep_Xargs_Options="-0"
    else
        " we got MacOS, Solaris, etc
    endif
else " we got windows
    echohl WarningMsg | echomsg "Warning: Unknown OS!" | echohl None
endif

"set dictionary=/usr/home/atnt/.vim/dictionary.txt

"set tabline=%!expand(\"\%:t\")

set pastetoggle=<S-A-F1>
"map qwe :set paste<CR>i
"abbr i :set nopaste<CR>i
"map i i<CR>
"map I <F12>i<CR>

""" Plugin setup:{{{
" Root dir where plugins may store their data
let g:pluginDataRoot = expand("~/.vim/_plugins_data")


set foldtext=MyFoldingFn()
fu! MyFoldingFn()
 "let foldClose = '}'
    "let foldTtl = v:foldend - v:foldstart
    "return getline(v:foldstart) . ' (+) ' . foldTtl .  ' lines... ' . foldClose

    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
       let line = getline(v:foldstart)
    else
       let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let foldSize = 1 + v:foldend - v:foldstart
    let lineCount = line("$")
    let foldPercentage = printf(" %.1f", (foldSize*1.0) * 100 / lineCount) . "% "
    return v:folddashes . " " . line . " " . foldSize . " lines (" . foldPercentage . "): "
endfu
"}}}


"}}}


"""
""" Checks the existance of a var and if the var doesn't exist it gets assigned
""" to a specified default value. Otherwise, var remains unchanged.
function! DetectOption(var, default)
    if !exists(a:var)
        execute("let ".a:var." = ".string(a:default))
"        let a:var = a:default
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Execute cmd and get a result list of files + jump to a file by pressing "Enter"
function! ExecSearch(cmd, action, err_file_fmt)
    let cmd_output = system(a:cmd)

    if cmd_output == ""
        echohl WarningMsg | echomsg "Error: Nothing was found" | echohl None
        return
    endif

    let tmpfile = ""
    let old_verbose = &verbose

    set verbose&vim

    redir => tmpfile
    silent echon '[Search cmd: ' . a:cmd . "]\n"
    silent echon "[=====================================]\n"
    silent echon cmd_output
    redir END

    let &verbose = old_verbose

    let old_efm = &efm

    if a:err_file_fmt == ""
        set efm=%f:%\\s%#%l:%m
    else
        let &efm=a:err_file_fmt
    endif

    if v:version >= 700 && a:action == 'add'
        caddexpr tmpfile
    else
        if exists(":cgetexpr")
            cgetexpr tmpfile
        else
            cexpr tmpfile
        endif
    endif

    let &efm = old_efm

    botright copen

    silent call matchadd('RedBg', "\\\\bug.*$")
    silent call matchadd('YellowBg', "\\\\fixme.*$")
    silent call matchadd('GreenBg', "\\\\todo.*$")
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" CommentBlock()
"""
""" param[in] firstline - Start of selected block
""" param[in] lastline - End of selected block
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:comment = {}
let s:comment['sh'] = "#"
let s:comment['csh'] = "#"
let s:comment['tcsh'] = "#"
let s:comment['zsh'] = "#"
let s:comment['ruby'] = "#"
let s:comment['make'] = "#"
let s:comment['cmake'] = "#"
let s:comment['conf'] = "#"
let s:comment['python'] = "#"
let s:comment['c'] = "//"
let s:comment['cpp'] = "//"
let s:comment['dot'] = "//"
let s:comment['java'] = "//"
let s:comment['rust'] = "//"
let s:comment['lua'] = "--"
let s:comment['sql'] = "--"
let s:comment['vim'] = "\""

function! CommentBlock() range "{{{
    let col = getpos('.')[2]

    try
        let l:str = s:comment[&ft]

        if stridx(getline(a:firstline), l:str) == 0
            execute a:firstline. "," . a:lastline . "s/".escape(l:str, '/')."//|noh"
            let col = col - 2
        else
            execute a:firstline. "," . a:lastline . "s/^/".escape(l:str, '/')."/|noh"
            let col = col + 2
        endif
    catch /E716:/
        echohl ErrorMsg | echomsg "Vim doesn't know comments for this filetype" | echohl None
    catch
        echohl ErrorMsg | echomsg "Unexpected error" | echohl None
    endtry

    call cursor(0, col)
endfunction "}}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" HexView() - Toggle hex view of the file
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:hflag = 0
function! HexView() "{{{
    let l:cmd = ""
    if s:hflag == 0
        let s:hflag = 1
        let l:cmd = ":%!xxd"
    else
        let s:hflag = 0
        let l:cmd = ":%!xxd -r"
    endif

    execute l:cmd
endfunction "}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Run() - runs executable
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:make_prg = {}
let s:make_prg['python'] = "python\\ %"
let s:make_prg['rust'] = "rust\\ build\\ %"
let s:errfmt = {}
let s:errfmt['python'] = "\\ \\ File\\ \"%f\"\\,\\ line\\ %l\\,\\ in\\ %*[^\\,]\\,\\ %m"

function! Run()
    execute ":setlocal makeprg=".s:make_prg[&ft]
    execute ":setlocal errorformat=".s:errfmt[&ft]
    execute ":make"
    execute ":loadview"
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:encindex = 0
function! RotateEnc() "{{{
    let y = -1
    while y == -1
        let encstring = "#8bit-cp1251#8bit-cp866#utf-8#koi8-r#utf-16#"
        let x = match(encstring,"#",b:encindex)
        let y = match(encstring,"#",x+1)
        let b:encindex = x+1
        if y == -1
            let b:encindex = 0
        else
            let str = strpart(encstring,x+1,y-x-1)
            execute ":set encoding=".str
        endif
    endwhile
endfunction "}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Toggle_H_CPP() - Jump to source/header
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! Toggle_H_CPP()
"    execute ":mkview"
"
"    let l:projectPath = GetProjectParam(expand("%:p"), "Path")
"    if l:projectPath == ""
"        let l:projectPath = "."
"    endif
"
"    let l:ext = ".".expand("%:e")
"    let l:dirname = expand("%:p:h")
"    let l:basename = substitute(system("basename ".expand("%:p")." ".l:ext), "\n", "", "g")
"    let l:fname = l:dirname."/".l:basename
"
"    let l:ext = tolower(l:ext)
"    "echo l:ext
"
"    let l:sourceExt = [".c", ".cc", ".cpp", ".cxx"]
"    let l:headerExt = [".h", ".hpp"]
"
"    let l:new_ext = ""
"    "if l:ext == "c" || l:ext == "cc" || l:ext == "cpp" || l:ext == "cxx"
"    if index(l:sourceExt, l:ext) != -1
"        let l:new_ext = "h"
"
"        " try to find the header that is located near the source
"        for l:extension in l:headerExt
"            if getftype(l:fname.l:extension) != ""
"                execute "find ".l:fname.l:extension
"                return
"            endif
"        endfor
"
"    elseif index(l:headerExt, l:ext) != -1
"        let l:new_ext = "c"
"
"        " try to find the source that is located near the header
"        for l:extension in l:sourceExt
"            if getftype(l:fname.l:extension) != ""
"                execute "find ".l:fname.l:extension
"                return
"            endif
"        endfor
"
"    else
"        return
"    endif
"
"    let l:ignore_list = "(~|\.svn)"
"    let l:cmd = "find ".l:projectPath."/ -name '".expand("%:t:r").".*' | egrep -v \"".l:ignore_list."\" | grep -i '\\.".l:new_ext."' | perl -ne 'print \"$.\\t$_\"'"
"
"    let l:list = system(l:cmd)
"    let l:num = strlen(substitute(l:list, "[^\n]", "", "g"))
"    if l:num < 1
"        echo "'".a:name."' not found"
"        return
"    endif
"
"    if l:num != 1
"        echo l:list
"        let l:input = input("Which ? (CR=nothing)\n")
"        if strlen(l:input) == 0
"            return
"        endif
"        if strlen(substitute(l:input, "[0-9]", "", "g")) > 0
"            echo "Not a number"
"            return
"        endif
"        if l:input < 1 || l:input > l:num
"            echo "Out of range"
"            return
"        endif
"        let l:line = matchstr("\n".l:list, "\n".l:input."\t[^\n]*")
"    else
"        let l:line = l:list
"    endif
"
"
"    "let l:line = substitute(l:line, "^[^\t]*\t./", "", "")
"    let l:line = substitute(l:line, "^[^\t]*\t", "", "")
"
"    """sf %:t:r.c
"    execute "find ".l:line
""    execute ":loadview"
"endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" RunMake() - runs make
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! RunMake()
"    silent !/bin/sh -c '(make > /dev/null) 2> ./.make.out' &
"    "silent !/bin/sh -c 'make -j3 | tee ./.build_out.orig' &
"    "return ":Shell tail -f ./.make.out"
"endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" ShowMakeResults()
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ShowMakeResults()

    try
        let l:make_out = system("/bin/sh -c \"tr -cd '\11\12\40-\176'\"")
        cgetexpr l:make_out
        copen 20
    "catch /E484:/
    catch
        echo "File .make.out cannot be found"
    finally
        "asdfasdf
    endtry

    return
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" RunShellCommand()
"""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
    echo a:cmdline
    let l:expanded_cmdline = a:cmdline
    for part in split(a:cmdline, ' ')
        if part[0] =~ '\v[%#<]'
            let l:expanded_part = fnameescape(expand(part))
            let l:expanded_cmdline = substitute(l:expanded_cmdline, part, l:expanded_part, '')
        endif
    endfor
    botright new
    let old_efm = &efm
    set efm=%f:%\\s%#%l:%m
    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
    call setline(1, 'You entered:    ' . a:cmdline)
    call setline(2, 'Expanded Form:  ' .l:expanded_cmdline)
    call setline(3, substitute(getline(2),'.','=','g'))
    execute '$read !'. l:expanded_cmdline
    setlocal nomodifiable
    1
endfunction


" langmap
"set langmap=├К├Г├Х├Л├Е├О├З├Ы├Э├Ъ├И├Я├Ж├Щ├Ч├Б├Р├Т├П├М├Д├Ц├Ь├С├Ю├У├Н├Й├Ф├Ш├В├А/├к├г├╡├л├еH├з├╗├╜├║├и├┐├ж├╣├╖├б├░├▓├п├м├д├╢├╝├▒├╛├│├н├й├┤├╕├в├а/;qwertyuiop[]asdfghjkl;'zxcvbnm,./QWERTYUIOP[]ASDFGHJKL:'ZXCVBNM,./
"set langmap='q,\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?
set statusline=%<%f%h%m%r%=%b\ %{&encoding}\ 0x%B\ \ %l,%c%V\ %P


""" Set colorscheme: {{{
set background=light
colorscheme PaperColor
set t_Co=256
"}}}


" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")
set guifont=Monospace\ 14


" Don't use Ex mode, use Q for formatting
"map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif


" if vim 7.3 and higher
if v:version >= 703
    set undodir=~/.vim/undo//
    set backupdir=~/.vim/backup//
    set directory=~/.vim/swap//

    """ Set textwidth in ViewGrp
"    set textwidth=90
    set colorcolumn=+1
    hi ColorColumn ctermbg=red guibg=lightgrey

    set undofile
else
    """ highlight 91st column if the line exceeds 90 char width: {{{
    highlight WidthStop ctermbg=green guibg=green
    highlight AfterWidthStop ctermbg=black guibg=black
    """}}}

    """ track line length: {{{
    au BufWinEnter * let w:m2=matchadd('WidthStop', '\%>90v.\+', -1)
    au BufWinEnter * let w:m2=matchadd('AfterWidthStop', '\%>91v.\+', -1)
    """}}}
endif


if v:progname =~? "gvim"
    set guitablabel=%!expand(\"\%:p\")
endif

function! CheckSetup(name, condition)
    let l:ret = 0
    execute("let l:ret = ".a:condition)
    let l:ok = "PASS"
    if l:ret == 0
        let l:ok = "FAIL"
        echohl ErrorMsg
    endif
    echomsg a:name.": ".l:ok | echohl None
endfunction


function! SelfTest()
    call CheckSetup("Vim cfg file", "v:version >= 703 && getftype(expand(\"~/.vimrc\")) == \"file\"")
    call CheckSetup("Undo directory", "v:version >= 703 && getftype(&undodir) == \"dir\"")
    call CheckSetup("Backup directory", "v:version >= 703 && getftype(&backupdir) == \"dir\"")
    call CheckSetup("Swap directory", "v:version >= 703 && getftype(&directory) == \"dir\"")
    call CheckSetup("VDE proj files", "v:version >= 703 && getftype(expand(\"~/.vim_projects\")) == \"file\"")
endfunction
