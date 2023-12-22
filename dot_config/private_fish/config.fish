if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export EDITOR=nvim

alias editfish="chezmoi edit ~/.config/fish/config.fish"
alias cdchezmoi="cd $(chezmoi source-path)"
