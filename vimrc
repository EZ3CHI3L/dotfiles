" pathogen
execute pathogen#infect()

" general
syntax on
set number
filetype plugin indent on
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set cursorline
set colorcolumn=80
set wrap
set textwidth=79
set scrolloff=7
set nobackup
set noswapfile
set wildmenu
set wildmode=longest,list
set wildignore+=*.o
set ttyfast
set undodir=~/.vim/undo_hist
set undofile

" solarized
set background=dark
colorscheme solarized

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_check_header = 1
let g:syntastic_c_check_header = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

" youcompleteme
let g:ycm_show_diagnostics_ui = 0
