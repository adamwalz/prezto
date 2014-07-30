#
# Sets up environment for working at Evernote
#
# Authors:
#   Adam Walz <adam@adamwalz.net>
#

export EVERNOTE_PROJ_ROOT="$HOME/Developer/Evernote"
export MAC_HOME="$EVERNOTE_PROJ_ROOT/mac"
export WEB_HOME="$EVERNOTE_PROJ_ROOT/web"
export NOTESTORE_HOME="$EVERNOTE_PROJ_ROOT/notestore"
export ANDROID_HOME="/usr/local/opt/android-sdk"

export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export TOMCAT_HOME="/usr/local/Cellar/tomcat6/6.0.41/libexec"


# Add Android tools to path
if [[ -s "$ANDROID_HOME/tools/android" ]]; then
  path=("$ANDROID_HOME/tools" $path)
fi

# Add Android platform tools to path
if [[ -s "$ANDROID_HOME/platform-tools/adb" ]]; then
  path=("$ANDROID_HOME/platform-tools" $path)
fi

# Add DevTools repository commands to path
if [[ -s "$EVERNOTE_PROJ_ROOT/DevTools/bin/enreview" ]]; then
  path=("$EVERNOTE_PROJ_ROOT/DevTools/bin" $path)
fi

#
# Functions
#

function enmacfix {
  if [[ $PWD =~ "$MAC_HOME(/.*)?" ]]; then
    build=$((`$MAC_HOME/build-scripts/build-number.sh -n | tail -1`))
    echo "Fixed in nightly build $build" | tr -d '\n' | tee >(pbcopy)
  else
    echo "First cd to $MAC_HOME"
  fi
}

function enmacstage {
  stageon=`defaults read com.evernote.Evernote stage`
  if [[ $stageon == "YES" ]]; then
    defaults write com.evernote.Evernote stage NO
    echo "stage off"
  else
    defaults write com.evernote.Evernote stage YES
    echo "stage on"
  fi
}

#
# Aliases
#

alias init_project='/usr/bin/python $EVERNOTE_PROJ_ROOT/DevTools/init_project.py'
alias enweblog="tail -F $TOMCAT_HOME/logs/catalina.out"

# Compile a module without running the interminable test cases:
alias mvnnotest="mvn install -Dmaven.test.skip=true"

# Install a built version of notestore
alias cpnstore="cp $HOME/.m2/repository/com/evernote/notestore/0.1-SNAPSHOT/notestore-0.1-SNAPSHOT.jar\
                   $TOMCAT_HOME/webapps/ROOT/WEB-INF/lib/"

# Grab any new schema changes
alias enblast="$NOTESTORE_HOME/src/main/sql/blast-sql.sh"

# To connect to the databases
alias ustore="mysql -u root userstore"
alias nstore="mysql -u root notestore"

