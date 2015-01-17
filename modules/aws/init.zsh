#
# Loads the AWS command line interface and enables awscli completion.
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

# Load aws cli completions.
if (( $+commands[aws] )); then
  source /usr/local/share/zsh/site-functions/_aws
fi

# AWS CLI
alias eb='aws elasticbeanstalk'
alias ec2='aws ec2'
alias s3='aws s3'
