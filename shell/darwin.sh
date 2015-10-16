export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

if [ "$(uname)" = "Darwin" ]; then
    PATH="$PATH:/Users/$(logname)/bin"
    alias browser=open
    alias st-nvm="source $(brew --prefix nvm)/nvm.sh"
    alias _cpaste="pbpaste"
    alias _ccopy="pbcopy"

    function xclip() {
        echo "You're on OS X, genius :) Use pbcopy or pbpaste :)"
    }
    alias updatebrew="brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup"
    alias podi="vim Podfile && pod install && beep"
fi
