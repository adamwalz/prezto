#
# Defines Homebrew aliases.
#
# Authors:

#   Adam Walz <adam@adamwalz.net>
#

#
# Variables
#

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi
