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

alias kcp="sed -i -e 's/current-context:.*/current-context: production/' ~/.kube/config"
alias kcs="sed -i -e 's/current-context:.*/current-context: stage/' ~/.kube/config"
alias kcd="sed -i -e 's/current-context:.*/current-context: devtest/' ~/.kube/config"
alias kcm="sed -i -e 's/current-context:.*/current-context: minikube/' ~/.kube/config"
alias kcw="sed -i -e 's/current-context:.*/current-context: walznet/' ~/.kube/config"
