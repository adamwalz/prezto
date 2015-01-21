#
# Sets up environment for working at Mangabi
#
# Authors:
#   Adam Walz <adam@mangabi.com>
#

application="Mangabi"

#
# Aliases
#

alias ebversions="aws elasticbeanstalk describe-application-versions"
alias ebenv="aws elasticbeanstalk describe-environments --application-name $application"
alias ebcheck-name="aws elasticbeanstalk check-dns-availability --cname-prefix "
