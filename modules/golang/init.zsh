# Defines GOPATH and adds Go binaries to the PATH.
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

export GOPATH="$HOME/.golang"

if (( $+commands[goenv] )); then
  export GOENV_ROOT=$(goenv root)
  eval "$(goenv init -)"
fi

alias gob='go build'
alias goc='go clean'
alias god='go doc'
alias gof='go fmt'
alias gofa='go fmt . ./...'
alias gog='go get'
alias goi='go install'
alias gol='go list'
alias gor='go run'
alias got='go test'
alias gov='go vet'
