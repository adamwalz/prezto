#
# Defines Kubernetes aliases and environment
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

if [[ -d $HOME/Developer/sdk/kubernetes ]]; then
  if [[ "$OSTYPE" == darwin* ]] && [[ -d $HOME/Developer/sdk/kubernetes/platforms/darwin/amd64 ]]; then
    path=("$HOME/Developer/sdk/kubernetes/platforms/darwin/amd64" $path)
    source <($HOME/Developer/sdk/kubernetes/platforms/darwin/amd64/kubectl completion zsh)
  fi
fi
