function link-OMZ() {
	rm -r $HOME/dotfiles/home/oh-my-zsh/custom
	ln -s $HOME/dotfiles/oh-my-zsh-custom $HOME/dotfiles/home/oh-my-zsh/custom
	echo "linked OMZ custom folder"
}
function link-emacs() {
	rm $HOME/dotfiles/home/emacs.d/lisp/init-local.el
	ln -s $HOME/dotfiles/emacs-custom/init-local.el $HOME/dotfiles/home/emacs.d/lisp/init-local.el
	echo "linked local.el to .emacs.d"
}
home=~/dotfiles/home

function dotify() {
  mv $home/${1:e} $1;
  ln -s $1 $home/${1:e};
}
function dotremove() {
  rm .${1}; mv $home/$1 .${1}
}
function dotback() {
  ln -s $home/$1 .${1}
}
function e() {
 vim $HOME/dotfiles/oh-my-zsh-custom/$1.zsh && source $HOME/dotfiles/oh-my-zsh-custom/$1.zsh;
}
function link-vim() {
  for f in vim vimbackup viminfo vimrc vimrc.before vimrc.bundles vimrc.local vimswap vimundo vimviews;do dotback $f; done
}
