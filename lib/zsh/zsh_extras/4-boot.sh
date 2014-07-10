# speed up zsh startup time by clearing these files out
#2>/dev/null 1>/dev/null sudo sh -c 'rm /private/var/logs/asl/*.asl'

# Setup dircolors - must use GNU Coreutils
eval `dircolors ~/.dircolors.ansi-dark`

archey -c

# display amusing and witty saying
fortune
