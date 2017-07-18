set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup


set -gx TTC_REPOS ~/Project
set -gx TTC_WEATHER San Diego

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

source ~/.config/fish/gpg.fish
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
alias vi vim
