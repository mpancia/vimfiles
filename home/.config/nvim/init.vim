" Set up python
"let g:python3_host_prog = '/Users/msp/anaconda3/bin/python' 
"let g:python_host_prog = '/Users/msp/anaconda3/envs/py2/bin/python'

" Required for omnicomplete
filetype on
filetype indent on
filetype plugin on

" Set leader to space
let mapleader = "\<Space>" 

" Install plugins
packadd minpac
call minpac#init()

" Solarized color scheme
call minpac#add('altercation/vim-colors-solarized')

" Airline status bar, and solarized theme
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

packloadall
