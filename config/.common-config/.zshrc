# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
plugins=(
  git command-not-found extract git-extras history-substring-search zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/vexere/tools/google-cloud-sdk/path.zsh.inc' ]; then . '~/vexere/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/vexere/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '~/vexere/tools/google-cloud-sdk/completion.zsh.inc'; fi

source ~/vxr-all-aliasrc
#alias kafka-prod="source ~/vxr-gcloud-kafka-prodrc"
#alias kafka-uat="source ~/vxr-gcloud-kafka-uatrc"
#alias vexere="source ~/vxr-gcloud-vexererc"

#source ~/vxr-gcloud-common-aliasrc
# fix error java.lang.NoClassDefFoundError: javax/xml/bind/annotation/XmlSchema
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
