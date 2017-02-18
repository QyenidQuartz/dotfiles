syntax enable
set laststatus=2
set backspace=start,eol
set mouse=a
set background=dark
colorscheme solarized



python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


