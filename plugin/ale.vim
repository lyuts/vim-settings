set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_linters = {
            \  'rust': ['analyzer'],
            \  'c': ['clangd'],
            \  'cpp': ['clangd'],
            \}

" 'target': 'x86_64-unknown-hermit',

let g:ale_rust_analyzer_config = {
            \'cargoFeatures': {
            \    'loadOutDirsFromCheck': v:true
            \    },
            \ 'cargo': {
                \ 'runBuildScripts': v:true
                \}
            \}

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:ale_completion_enabled = 1


" let g:ale_c_clangd_executable = "clangd-13"
" let g:ale_cpp_clangd_executable = "clangd-13"

nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

nnoremap <silent> <leader>fr :ALEFindReferences<CR>
nnoremap <silent> <leader>ff :ALEFix<CR>
nnoremap <silent> <leader>fs :ALEFixSuggest<CR>
nnoremap <silent> <leader>gd :ALEGoToDefinition `<options>`<CR>
nnoremap <silent> <leader>gt :ALEGoToTypeDefinition<CR>
nnoremap <silent> <leader>ah :ALEHover<CR>
nnoremap <silent> <leader>ai :ALEImport<CR>
nnoremap <silent> <leader>aO :ALEOrganizeImports<CR>
nnoremap <silent> <leader>rn :ALERename<CR>
nnoremap <silent> <leader>fn :ALEFileRename<CR>
nnoremap <silent> <leader>ca :ALECodeAction<CR>
nnoremap <silent> <leader>aX :ALESymbolSearch `<query>`<CR>
nnoremap <silent> <leader>an :ALENext<CR>
nnoremap <silent> <leader>ad :ALEDetail<CR>

let g:rust_cargo_avoid_whole_workspace = 0
let g:syntastic_rust_checkers = []
