#
# Sets up environment for working at Butter AI
#
# Authors:
#   Adam Walz <adam@butter.ai>
#

#
# Aliases
#

alias psql-butter-datastore-stage="ssh -L 15432:stage-db.cemb5sz7chau.us-west-2.rds.amazonaws.com:5432 butter sleep 10 & sleep 1 && psql -p 15432 -U dbmaster -h 127.0.0.1 stage"
alias redis-butter-stage="ssh -L 16379:butter-cache-stage.3kaqxy.0001.usw2.cache.amazonaws.com:6379 butter sleep 10 & sleep 1 && redis-cli -p 16379 -h 127.0.0.1"

alias kcbs='kubectl --namespace=butter-stage'
alias kcbp='kubectl --namespace=butter-production'
alias kcbo='kubectl --namespace=butter-ops'
