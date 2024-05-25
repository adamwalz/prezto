#
# Defines Homebrew aliases.
#
# Authors:

#   Adam Walz <adam@adamwalz.net>
#

#
# Variables
#

if (( $+commands[thefuck] )); then
  eval "$(thefuck --alias)"
  eval "$(thefuck --alias fk)"
fi
