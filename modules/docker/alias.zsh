#
# Defines Docker aliases.
#
# Author:
#   François Vantomme <akarzim@gmail.com>
#

#
# Aliases
#

# Docker
alias dk='docker'
alias dka='docker attach'
alias dkb='docker build'
alias dkd='docker diff'
alias dkdf='docker system df'
alias dke='docker exec'
alias dkE='docker exec -it'
alias dkh='docker history'
alias dki='docker images'
alias dkin='docker inspect'
alias dkim='docker import'
alias dkk='docker kill'
alias dkl='docker logs'
alias dkli='docker login'
alias dklo='docker logout'
alias dkls='docker ps'
alias dkp='docker pause'
alias dkP='docker unpause'
alias dkpl='docker pull'
alias dkph='docker push'
alias dkps='docker ps'
alias dkpsa='docker ps -a'
alias dkr='docker run'
alias dkR='docker run -it --rm'
alias dkRe='docker run -it --rm --entrypoint /bin/bash'
alias dkRM='docker system prune'
alias dkrm='docker rm'
alias dkrmi='docker rmi'
alias dkrn='docker rename'
alias dks='docker start'
alias dkS='docker restart'
alias dkss='docker stats'
alias dksv='docker save'
alias dkt='docker tag'
alias dktop='docker top'
alias dkup='docker update'
alias dkV='docker volume'
alias dkv='docker version'
alias dkw='docker wait'
alias dkx='docker stop'

## Container (C)
alias dkC='docker container'
alias dkCa='docker container attach'
alias dkCcp='docker container cp'
alias dkCd='docker container diff'
alias dkCe='docker container exec'
alias dkCin='docker container inspect'
alias dkCk='docker container kill'
alias dkCl='docker container logs'
alias dkCls='docker container ls'
alias dkCp='docker container pause'
alias dkCpr='docker container prune'
alias dkCrn='docker container rename'
alias dkCS='docker container restart'
alias dkCrm='docker container rm'
alias dkCr='docker container run'
alias dkCR='docker container run -it --rm'
alias dkCRe='docker container run -it --rm --entrypoint /bin/bash'
alias dkCs='docker container start'
alias dkCss='docker container stats'
alias dkCx='docker container stop'
alias dkCtop='docker container top'
alias dkCP='docker container unpause'
alias dkCup='docker container update'
alias dkCw='docker container wait'

## Image (I)
alias dkI='docker image'
alias dkIb='docker image build'
alias dkIh='docker image history'
alias dkIim='docker image import'
alias dkIin='docker image inspect'
alias dkIls='docker image ls'
alias dkIpr='docker image prune'
alias dkIpl='docker image pull'
alias dkIph='docker image push'
alias dkIrm='docker image rm'
alias dkIsv='docker image save'
alias dkIt='docker image tag'

## Volume (V)
alias dkV='docker volume'
alias dkVin='docker volume inspect'
alias dkVls='docker volume ls'
alias dkVpr='docker volume prune'
alias dkVrm='docker volume rm'

## Network (N)
alias dkN='docker network'
alias dkNs='docker network connect'
alias dkNx='docker network disconnect'
alias dkNin='docker network inspect'
alias dkNls='docker network ls'
alias dkNpr='docker network prune'
alias dkNrm='docker network rm'

## System (Y)
alias dkY='docker system'
alias dkYdf='docker system df'
alias dkYpr='docker system prune'

## Stack (K)
alias dkK='docker stack'
alias dkKls='docker stack ls'
alias dkKps='docker stack ps'
alias dkKrm='docker stack rm'

## Swarm (W)
alias dkW='docker swarm'

## CleanUp (rm)
# Clean up exited containers (docker < 1.13)
alias dkrmC='docker rm $(docker ps -qaf status=exited)'
# Clean up dangling images (docker < 1.13)
alias dkrmI='docker rmi $(docker images -qf dangling=true)'
# Clean up dangling volumes (docker < 1.13)
alias dkrmV='docker volume rm $(docker volume ls -qf dangling=true)'


# Docker Machine (m)
alias dkm='docker-machine'
alias dkma='docker-machine active'
alias dkmcp='docker-machine scp'
alias dkmin='docker-machine inspect'
alias dkmip='docker-machine ip'
alias dkmk='docker-machine kill'
alias dkmls='docker-machine ls'
alias dkmpr='docker-machine provision'
alias dkmps='docker-machine ps'
alias dkmrg='docker-machine regenerate-certs'
alias dkmrm='docker-machine rm'
alias dkms='docker-machine start'
alias dkmsh='docker-machine ssh'
alias dkmst='docker-machine status'
alias dkmS='docker-machine restart'
alias dkmu='docker-machine url'
alias dkmup='docker-machine upgrade'
alias dkmv='docker-machine version'
alias dkmx='docker-machine stop'

# Docker Compose (c)
alias fig='docker-compose'
alias figb='docker-compose build'
alias figB='docker-compose build --no-cache'
alias figd='docker-compose down'
alias fige='docker-compose exec'
alias figk='docker-compose kill'
alias figl='docker-compose logs'
alias figls='docker-compose ps'
alias figp='docker-compose pause'
alias figP='docker-compose unpause'
alias figpl='docker-compose pull'
alias figph='docker-compose push'
alias figps='docker-compose ps'
alias figr='docker-compose run'
alias figR='docker-compose run --rm'
alias figrm='docker-compose rm'
alias figs='docker-compose start'
alias figsc='docker-compose scale'
alias figS='docker-compose restart'
alias figu='docker-compose up'
alias figU='docker-compose up -d'
alias figv='docker-compose version'
alias figx='docker-compose stop'
