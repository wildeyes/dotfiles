export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.shn

if [ "$(uname)" = "Darwin" ]; then
    PATH="$PATH:/Users/$(logname)/bin"
    alias browser=open
    alias st-nvm="source $(brew --prefix nvm)/nvm.sh"
    alias _cpaste="pbpaste"
    alias _ccopy="pbcopy"

    function xclip() {
        echo "You're on OS X, genius :) Use pbcopy or pbpaste :)"
    }
fi
