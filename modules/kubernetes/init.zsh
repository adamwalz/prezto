#
# Defines Kubernetes aliases and environment
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

if [[ -d $HOME/Developer/sdk/kubernetes ]]; then
  # kubectl is installable via homebrew as well if you don't need the full
  # kubernetes download. However first check for the full kubernetes install
  # to see if a specific version is installed. This one will take precedence.
  if [[ "$OSTYPE" == darwin* ]] && [[ -d $HOME/Developer/sdk/kubernetes/platforms/darwin/amd64 ]]; then
    path=("$HOME/Developer/sdk/kubernetes/platforms/darwin/amd64" $path)
    source <($HOME/Developer/sdk/kubernetes/platforms/darwin/amd64/kubectl completion zsh)
  fi
fi

# Aliases
alias kc=kubectl
alias kcimages="kubectl get pods -o jsonpath='{range .items[*]}{.metadata.name} ({.status.phase}){\"\\n\"}{.spec.containers[*].image}{\"\\n\\n\"}{end}'"
