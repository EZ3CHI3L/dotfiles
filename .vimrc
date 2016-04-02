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
set colorcolumn=80

" solarized
set background=dark
colorscheme solarized

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1

" youcompleteme
let g:ycm_show_diagnostics_ui = 0
