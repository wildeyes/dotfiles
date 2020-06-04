function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
function md() {mkdir $1; cd $1; }
function edit() {
	vim ~/.zshrc;
	source ~/.zshrc;
	mackup backup;
}
alias aliasall="{ alias; git aliases; } | sort"

# git
alias branchname='git rev-parse --abbrev-ref HEAD'
