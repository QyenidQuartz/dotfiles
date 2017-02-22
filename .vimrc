syntax on 
set laststatus=2
set backspace=start,eol
set mouse=a
set background=dark
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
colorscheme solarized

execute pathogen#infect()

filetype plugin indent on


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


