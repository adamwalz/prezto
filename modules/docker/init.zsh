#
# Defines Docker aliases and provides for auto launching at start-up
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

# Load manually installed boot2docker environment into the shell session.
if [[ "$OSTYPE" == darwin* ]] && (( $+commands[boot2docker] )); then
  if [[ $(boot2docker status) == "running" ]]; then
    export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
    export DOCKER_HOST=tcp://192.168.59.103:2376
  fi

  alias dockerup='boot2docker up && eval $(boot2docker shellinit)'
  alias dockerdown='boot2docker down'
fi
