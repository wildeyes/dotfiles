# Antigen
source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle 'wfxr/forgit'

# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen-bundle Tarrasch/zsh-autoenv
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-completions
# antigen bundle zsh-users/zsh-history-substring-search

antigen theme bureau

antigen apply

source ~/.fzfrc
source ~/enhancd/init.sh; ENHANCD_FILTER=fzf

# Packages configuration
HOMEBREW_AUTO_UPDATE_SECS=604800

# Extra PATH
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$PATH:/Users/wie/flutter/bin"
export PATH="/usr/local/lib/ruby/gems/2.6.0:$PATH"

export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget

