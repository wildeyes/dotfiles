if [ "$(uname)" = "Linux" ]; then
    PATH="$PATH:/home/$(logname)/bin"
    alias relxbk='pkill xbindkeys && xbindkeys'
    alias st-nvm='source ~/.nvm/nvm.sh'
    alias browser=google-chrome-stable


    function ohere() {
      unzip $1 -d ${1:t:r} && cd ${1:t:r}
    }
    function restart() {
      pkill $1 && $1 &;
    }
    alias ls="ls -la"
    alias dpstatus="watch -n 1 dropbox.py status"
    alias _cpaste="xclip -o"
    alias _ccopy="xclip -sel c"
fi
