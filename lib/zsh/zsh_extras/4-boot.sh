# speed up zsh startup time by clearing these files out
#2>/dev/null 1>/dev/null sudo sh -c 'rm /private/var/logs/asl/*.asl'

# Setup dircolors - must use GNU Coreutils
eval `dircolors ~/.dircolors.ansi-dark`

archey -c

#bindkey -v

#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward

#function zle-line-init zle-keymap-select {
    #VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    #zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select
#export KEYTIMEOUT=1

# display amusing and witty saying

fortune
