#
# Defines Docker aliases and provides for auto launching at start-up
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

docker_machine_name="dev"

# Load manually installed boot2docker environment into the shell session.
if (( $+commands[docker-machine] )); then
  # Don't load the docker-machine environment when running in tmux because it
  # slows down creating new windows
  [[ -z $TMUX ]] && eval "$(docker-machine env ${docker_machine_name})"
fi

alias fig="docker-compose"
