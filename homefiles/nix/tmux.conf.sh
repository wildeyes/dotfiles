# List of plugins
# Supports `github_username/repo` or full git URLs

set -g @tpm_plugins "              \
  tmux-plugins/tpm                 \
  tmux-plugins/tmux-sensible       \
  tmux-plugins/tmux-resurrect      \
  tmux-plugins/tmux-pain-control   \
"
setw -g mode-mouse on
set-option -g mouse-select-pane on
set -g @resurrect-strategy-vim 'session'
set-option -g allow-rename off
# smart pane switching with awareness of vim splits
#bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-h) || tmux select-pane -L"
#bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-j) || tmux select-pane -D"
#bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-k) || tmux select-pane -U"
#bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-l) || tmux select-pane -R"
#bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys 'C-\\'') || tmux select-pane -l"
# Initializes TMUX plugin manager.
# Keep this line at the very bottom of tmux.conf.
run-shell "/home/wie/.tmux/plugins/tpm/tpm"
