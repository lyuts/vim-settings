let NERDTreeHijackNetrw = 1
let NERDChristmasTree = 1
""" files to ignore
let NERDTreeIgnore = ['.*\.o$']
let NERDTreeIgnore += ['.*\~$']
let NERDTreeIgnore += ['.*\.out$']
let NERDTreeIgnore += ['.*\.so$', '.*\.a$', '.*\.dll$']
" audio/video
let NERDTreeIgnore += ['.*\.ogv$', '.*\.ogg$', '.*\.mp3$', '.*\.avi$']
let NERDTreeIgnore += ['.*\.mp4$', '.*\.wmv$', '.*\.wma$', '.*\.mp([eE])?g$']
" pics
let NERDTreeIgnore += ['.*\.[pP][nN][gG]$', '.*\.[jJ][pP]([eE])?[gG]$', '.*\.[gG][iI][fF]$']
" tarballs
let NERDTreeIgnore += ['.*\.bz2$', '.*\.gz$', '.*\.tar$', '.*\.zip$', '.*\.tgz$', '.*\.rar$']
" packages
let NERDTreeIgnore += ['.*\.deb$', '.*\.ipk$', '.*\.rpm$', '.*\.tbz$']
" flash
let NERDTreeIgnore += ['.*\.[sS][wW][fF]$']
" libtool archives and objs
let NERDTreeIgnore += ['.*\.lo', '.*\.la']

" java's binary files
let NERDTreeIgnore += ['.*\.class']
" tags
let NERDTreeIgnore += ['tags']

let NERDTreeIgnore += ['.*\.gch']

nnoremap <Leader>nf :NERDTreeFind<CR>
