alias kafka-prod="source $COMMON_CONFIG_DIR/vxr/gcloud-kafka-prodrc.zsh"
alias kafka-uat="source $COMMON_CONFIG_DIR/vxr/gcloud-kafka-uatrc.zsh"
alias vexere-prod="source $COMMON_CONFIG_DIR/vxr/gcloud-vexere-prodrc.zsh"
alias vexere-uat="source $COMMON_CONFIG_DIR/vxr/gcloud-vexere-uatrc.zsh"
alias webnhaxe="source $COMMON_CONFIG_DIR/vxr/gcloud-webnhaxerc.zsh"

source $COMMON_CONFIG_DIR/alias/common.alias.zsh
source $COMMON_CONFIG_DIR/alias/gcloud-common.alias.zsh
source $COMMON_CONFIG_DIR/alias/sails.alias.zsh
source $COMMON_CONFIG_DIR/alias/node.alias.zsh
source $COMMON_CONFIG_DIR/alias/cloudflare.alias.zsh
source $COMMON_CONFIG_DIR/alias/redis.alias.zsh
source $COMMON_CONFIG_DIR/alias/git.alias.zsh
source $COMMON_CONFIG_DIR/alias/kafka.alias.zsh

export PATH=$PATH:$COMMON_CONFIG_DIR/bin
