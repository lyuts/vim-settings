let g:completekey = "<C-c><C-c>"
let g:user_defined_snippets = "bundle/my_code_complete.snippets"
autocmd BufReadPost,BufNewFile * call CodeCompleteStart()
