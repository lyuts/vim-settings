let g:unite_source_history_yank_enable = 1

map <Leader>uy :Unite history/yank<CR>
map <Leader>uf :Unite -start-insert file_rec<CR>
map <Leader>ub :Unite -start-insert buffer<CR>
map <Leader>ul :Unite -start-insert line<CR>
map <Leader>um :Unite -start-insert mapping<CR>
