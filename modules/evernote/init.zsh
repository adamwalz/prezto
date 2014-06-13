#
# Sets up environment for working at Evernote
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

export PROJECT_HOME="$HOME/Developer/Evernote"
export MAC_HOME="$PROJECT_HOME/mac"

export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export ANDROID_HOME="/usr/local/opt/android-sdk"

# Add Android tools to path
if [[ -s "$ANDROID_HOME/tools/android" ]]; then
  path=("$ANDROID_HOME/tools" $path)
fi

# Add Android platform tools to path
if [[ -s "$ANDROID_HOME/platform-tools/adb" ]]; then
  path=("$ANDROID_HOME/platform-tools" $path)
fi

# Add DevTools repository commands to path
if [[ -s "$PROJECT_HOME/DevTools/bin/enreview" ]]; then
  path=("$PROJECT_HOME/DevTools/bin" $path)
fi

#
# Functions
#

function enmacfix {
  integer build=$((`./build-scripts/build-number.sh | tail -n 1` + 1))
  echo "Fixed in nightly build $build" | tee >(pbcopy)
}

#
# Aliases
#

alias init_project='python $PROJECT_HOME/DevTools/init_project.py'
alias enstageon='defaults write com.evernote.Evernote stage YES'
alias enstageoff='defaults write com.evernote.Evernote stage NO'
