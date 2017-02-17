eval (hub alias -s)
if [ -f "$HOME/.gpg-agent-info" ]
  source "$HOME/.gpg-agent-info.fish"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
end
export GPG_TTY=(tty)
rvm default
