imap <C-@> <C-X><C-O>
"""ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /usr/include/gtkmm-2.4/
"map ctags :!ctags -V -R --c++-kinds=+p --fields=+iaS --extra=+q . <CR><Esc>
"set tags+=~/.vim/dev_tags/usr_include.ctags
"set tags+=~/.vim/dev_tags/qt46.ctags
"set tags+=~/.vim/dev_tags/qt47.ctags
"set tags+=~/.vim/dev_tags/gtk.ctags
"set tags+=~/.vim/dev_tags/gtkmm.ctags
"set tags+=~/.vim/dev_tags/boost.ctags

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 0 " autocomplete after .
let OmniCpp_MayCompleteArrow = 0 " autocomplete after ->
let OmniCpp_MayCompleteScope = 0 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest
