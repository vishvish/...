# info for tmux-powerline
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# if which tmux 2>&1 >/dev/null; then
#   test -z "$TMUX" && (tmux attach || tmux new-session)
# fi

# run liquidprompt
# source liquidprompt

# speed up zsh startup time by clearing these files out
#2>/dev/null 1>/dev/null sudo sh -c 'rm /private/var/logs/asl/*.asl'

# source /opt/boxen/homebrew/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#scutil --set HostName "localhost"

# display amusing and witty saying
archey -c
fortune
