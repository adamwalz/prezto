#
# Sets up environment for working at Box.com
#
# Authors:
#   Adam Walz <awalz@box.com>
#

export BOX_HOME="/box"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_OPTS=""

# Add Android tools to path
if [[ -s "$BOX_HOME/www/devtools_readonly/bin" ]]; then
  path=("$BOX_HOME/www/devtools_readonly/bin" $path)
fi

#
# Aliases
#

alias c="cd $BOX_HOME/www/current_local"
