unalias md; function md() { mkdir -p $1; cd $1; }
alias grep='grep -He'
alias browser=google-chrome-stable
alias x-www-browser=browser
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

function ccopy() { if [[ -z $1 ]]; then _ccopy; else cat $1 | _ccopy; fi }
function cpaste() { if [[ -z $1 ]]; then _cpaste; else _cpaste > $1; fi }
function cpl() {
  #[[-z $1]] && 1=0
  if [[ -z $1 ]]; then
      echo $(fc -ln | percol) | ccopy
  else
     echo $(fc -ln | awk "NR==$(expr 15 - $1 + 1)") | ccopy
  fi
}
function cpl0() {
   cpl 0
}
function reload() {
  print -n "\nReloading Shell...!"
  source ~/.zshrc
  zle .accept-line
}
zle -N reload reload
bindkey '^[[15~' reload


source $HOME/dotfiles/oh-my-zsh-custom/funcs.zsh
#save_function cd _old_cd

#function cd() {
  #_old_cd $@ && ls;
#}

function runfrom() { cat $1 | percol | xargs; }
