# The environment manager for ruby lang
status --is-interactive; and source (rbenv init -|psub)

# Init Starship (the prompt manager)
starship init fish | source

# Using vim mode by default
fish_vi_key_bindings

# Init tmux on startup shell
if not set -q TMUX
    # Start a new tmux session
    tmux attach || tmux new-session
end

