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

Off 'vim-scripts/Marks-Browser'
Off 'vim-scripts/SemanticHL'
Off 'vim-scripts/SyntaxAttr.vim'
Off 'vim-scripts/ZoomWin'
Off 'vim-scripts/diffchar.vim'
Off 'vim-scripts/grep.vim'
Off 'vim-scripts/taglist.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'Raimondi/delimitMate'
Plugin 'Rykka/easydigraph.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Stormherz/tablify'
Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux'
Plugin 'bkad/CamelCaseMotion'
Plugin 'chrisbra/NrrwRgn'
Plugin 'catppuccin/vim', {'name': 'catppuccin-vim'}
Plugin 'chrisbra/csv.vim'
Plugin 'dense-analysis/ale'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/VimCalc'
Plugin 'jremmen/vim-ripgrep'
Plugin 'kana/vim-textobj-user'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'lyuts/vim-markHL'
Plugin 'lyuts/vim-mymaps'
Plugin 'lyuts/vim-rtags', { 'pinned' : 1 }
Plugin 'lyuts/vim-vde'
Plugin 'majutsushi/tagbar'
"Plugin 'markwu/ZoomWin'
Plugin 'mbbill/undotree'
Plugin 'rust-lang/rust.vim', { 'name' : 'moz_rust.vim' }
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/DirDiff.vim'
Plugin 'vim-scripts/argwrap.vim'
Plugin 'vim-scripts/diffchanges.vim'
Plugin 'vim-scripts/matchit.zip'
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
set nobackup
set noswapfile
set noundofile
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

set colorcolumn=+1
hi ColorColumn ctermbg=red guibg=lightgrey

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
