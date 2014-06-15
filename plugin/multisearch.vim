command! HI :exe "Msearch add /\\<".expand("<cword>")."\\>/"
command! NOH :Msearch! delete
