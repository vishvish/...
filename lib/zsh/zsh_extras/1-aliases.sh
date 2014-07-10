# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -lA1'
alias ll='ls -lT'
alias la='ls -lA'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Aliases for certificate generation
alias generate_rsa_key="openssl genrsa -des3 -out server.key 2048"
alias strip_passphrase_from_key="openssl rsa -in server.key -out server.key"
alias generate_csr="openssl req -new -key server.key -out server.csr"
alias generate_certificate_signing_request="generate_rsa_key && strip_passphrase_from_key && generate_csr"

# Aliases for ssh servers
alias dd="mosh -n dizzy"
alias dds="ssh vish@dizzy"
alias jj="ssh suckerpunch@jet.freeformsystems.com"

# Alias ssh remote commands
alias ml="ssh -t mail 'sudo tail -f /var/log/mail.log'"

# Alias helper commands
alias tunnels="sudo lsof -i -n | egrep '\<ssh\>'"
alias mg="mvn archetype:generate"
alias cleanup="sudo rm -rf /private/var/log/asl/*.asl"

# Tmux
alias tm="tmuxStart"

function tmuxStart()
{
    if which tmux 2>&1 >/dev/null; then
      test -z "$TMUX" && (tmux attach || tmux new-session)
    fi
}

# Make beautiful git logs
alias gll="git log --oneline --decorate --all --graph"
