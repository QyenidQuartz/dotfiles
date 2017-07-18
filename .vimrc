syntax on 
set laststatus=2
set backspace=start,eol,indent
set mouse=a
set background=dark
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
colorscheme solarized

execute pathogen#infect()

filetype plugin indent on


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
