export ZSH="/Users/lyhourchhen/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

ZSH_DISABLE_COMPFIX="true"

alias python="python3"
alias ll="ls -alt"
alias sl="ls"
alias c="clear"

alias git-go="git status && git pull"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias flutter="/Users/lyhourchhen/Developments/flutter/bin/flutter"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
alias dr_push="git push && git push https://github.com/LyhourChhen/Cloud_POS_Dr-Professional.git"
alias D="cd ~/Developments"


#Kill all node process that running
alias kill-node="kill -9 $(ps aux | grep '\snode\s' | awk '{print $2}')"
#alias to flutter
alias flutter="/Users/lyhourchhen/Developments/Binary/flutter/bin/flutter"

#alias to andoird studio path
alias android="open -a /Applications/Android\ Studio.app"

#alias for Intellj
alias ij="open -a /Applications/IntelliJ\ IDEA.app/"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/lyhourchhen/.sdkman"
[[ -s "/Users/lyhourchhen/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/lyhourchhen/.sdkman/bin/sdkman-init.sh"
