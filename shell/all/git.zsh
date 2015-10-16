# git config alias.restore '!f() { git checkout $(git rev-list -n 1 HEAD -- $1)~1 -- $(git diff --name-status $(git rev-list -n 1 HEAD -- $1)~1 | grep '^D' | cut -f 2); }; f'
alias restore-file='!git checkout $(git rev-list -n 1 HEAD -- "$1")^ -- "$1"'

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
