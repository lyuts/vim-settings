let g:vimwiki_use_calendar = 1
let g:vimwiki_camel_case = 0
map <Leader>wn <Plug>VimwikiNextLink
map <Leader>wp <Plug>VimwikiPrevLink

let wiki = {}
let wiki.path = '~/Documents/vimwiki/'
let wiki.template_path = wiki.path.'/templates'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'java': 'java'}
let wiki.maxhi = 1

let portable = {}
let portable.path = '/media/80501633903/vimwiki'
let g:vimwiki_list = [wiki, portable]
