# Custom Path
export PATH="$PATH:/home/alexandre/.cargo/bin"

#Star Ship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Aliases
alias vim=nvim
## Better ls
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
## Better cat
alias cat=bat
## Better ls
eval "$(zoxide init zsh)"
