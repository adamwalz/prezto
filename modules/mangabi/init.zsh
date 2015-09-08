#
# Sets up environment for working at Mangabi
#
# Authors:
#   Adam Walz <adam@mangabi.com>
#

application="Mangabi"

if [[ -d "$HOME/Developer/sdk/google-cloud-sdk/bin" ]]; then
  path=($HOME/Developer/sdk/google-cloud-sdk/bin $path)
fi

#
# Aliases
#

alias ebversions="aws elasticbeanstalk describe-application-versions"
alias ebenv="aws elasticbeanstalk describe-environments --application-name $application"
alias ebcheck-name="aws elasticbeanstalk check-dns-availability --cname-prefix "
