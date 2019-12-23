#
# Sets up puppet configuration management
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

if [[ "$OSTYPE" == linux* && -d /opt/puppetlabs ]]; then
  path=(/opt/puppetlabs/bin $path)
fi
