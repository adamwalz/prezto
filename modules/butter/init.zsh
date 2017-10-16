#
# Sets up environment for working at Butter AI
#
# Authors:
#   Adam Walz <adam@butter.ai>
#

#
# Aliases
#

export KOPS_STATE_STORE=s3://clusters.ops.butter.ai

alias kcs='kubectl --context=stage'
alias kcp='kubectl --context=prod'
alias kco='kubectl --context=ops'

alias bdev='kops export kubecfg butterdevtest.ops.butter.ai'
alias bstage='kops export kubecfg butterstage.ops.butter.ai'
alias bprod='kops export kubecfg butter.ai'
