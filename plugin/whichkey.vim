nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

let g:which_key_map = {}
let g:which_key_map['a'] = {
      \ 'name' : '+ale/argwrap',
      \ 'f' : 'fix',
      \ 'w' : '(un)wrap arguments',
      \ }
let g:which_key_map['g'] = {
      \ 'name' : '+goto',
      \ 'd' : 'definition',
      \ 'r' : 'find references',
      \ }
let g:which_key_map['f'] = {
      \ 'name' : '+find',
      \ 'b' : 'buffer',
      \ 'r' : 'find in file tree',
      \ }
call which_key#register('<Space>', "g:which_key_map")
