# Start or re-use a gpg-agent.
#
# Assumes gpg-agent writes its environment info in ~/.gpg-agent-info.
#
# Sets the gpg-agent environment stuff as universal variables, so it
# takes effect across all shells.

function __refresh_gpg_agent_info -d "Re-load ~/.gpg-agent-info into environment"
  cat ~/.gpg-agent-info | sed 's/=/ /' | while read key value
    set -e $key
    set -U -x $key "$value"
  end
end

if not set -q -x GPG_AGENT_INFO
  gpg-agent --enable-ssh-support --daemon --write-env-file ~/.gpg-agent-info
end

if test -f ~/.gpg-agent-info
  __refresh_gpg_agent_info
  export GPG_TTY=(tty)

  gpg-connect-agent /bye ^/dev/null
  if test $status -eq 1
    pkill -U $USER gpg-agent
    gpg-agent --daemon --write-env-file ~/.gpg-agent-info >/dev/null
    __refresh_gpg_agent_info
  end
end
