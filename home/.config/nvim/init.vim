" Set up python
"let g:python3_host_prog = '/Users/msp/anaconda3/bin/python' 
"let g:python_host_prog = '/Users/msp/anaconda3/envs/py2/bin/python'

" Required for omnicomplete
filetype on
filetype indent on
filetype plugin on

" Syntax highlights
syntax enable

" Set leader to space
let mapleader = "\<Space>" 

" Show matching brackets
set showmatch           

 " Show the line numbers on the left side.
set number             

" ... unless the query has capital letters.
set smartcase           

" Use 'g' flag by default with :s/foo/bar/.
set gdefault            

" Use 'magic' patterns (extended regular expressions).
set magic               

" Live substitution
set inccommand=nosplit  

" Remap split navigation 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clear highlights after searching
noremap <silent><esc> <esc>:noh<CR><esc>
noremap <C-q> :confirm qall<CR>

" Tab Settings {{{
" Visual spaces per tab
set tabstop=4

" Spaces inserted per tab
set softtabstop=4

" Don't expand tabs by default
set noexpandtab

" Smarter auto-indentation
set smartindent
set shiftwidth=4
"}}}

" Install plugins {{{

packadd minpac
call minpac#init()

" Sensible defaults
call minpac#add('tpope/vim-sensible')

" Solarized color scheme
call minpac#add('altercation/vim-colors-solarized')

" Airline status bar, and solarized theme
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

" Surrounding
call minpac#add('tpope/vim-surround')

" CSV support
call minpac#add('chrisbra/csv.vim')

" Commenting
call minpac#add('tpope/vim-commentary')

" Git
call minpac#add('tpope/vim-fugitive')
"}}}

" Set color scheme to Solarized Dark
set background=dark
silent! colorscheme solarized

" Enable Powerline fonts and Solarized theme (Airline)
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" Folding {{{
set foldenable

" Ten levels of fold shown by default
set foldlevelstart=10
set foldnestmax=10

" Use indentation for folding by default
set foldmethod=indent

" Only look for mode lines at end of file
set modelines=1
" }}}
