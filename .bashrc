# gNewSense Evolution Master Shell Profile Template
# ==================================================

# 1. Prevent overlapping terminal window borders on text outputs
export TERM=xterm-256color

# 2. Define the King's Custom Terminal Prompt (PS1) Layout
# Colors: Light Blue (38;5;39), White (15), Yellow/Gold (220)
if [ "$USER" = "root" ]; then
    # Red skull warning if logging in as root administrator
    export PS1="\[\e[38;5;196m\]💀 root\[\e[15m\]@\[\e[38;5;39m\]gNewSense\[\e[15m\]:\[\e[38;5;220m\]\w\[\e[15m\]# "
else
    # The King's Crown prompt string for default live testing users
    export PS1="\[\e[38;5;220m\]👑 \[\e[38;5;39m\]\u\[\e[15m\]@\[\e[38;5;39m\]gNewSense\[\e[15m\]:\[\e[15m\]\w\[\e[38;5;220m\]$ \[\e[0m\]"
fi

# 3. Useful shortcut aliases for development terminal workflow speeds
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias compile='sudo apt clean && sudo eggs produce --clone'
alias checklogs='tail -f /var/log/calamares.log'
