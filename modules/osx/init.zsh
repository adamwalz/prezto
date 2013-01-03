#
# Defines Mac OS X aliases and functions.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != darwin* ]]; then
  return 1
fi
#
# Aliases
#

# Change directory to the current Finder directory.
alias cdf='cd "$(pfd)"'

# Push directory to the current Finder directory.
alias pushdf='pushd "$(pfd)"'

# send to Trash with shorter command
alias del='trash'

#
# Functions
#

# Open files in Quick Look.
function ql {
  (( $# > 0 )) && qlmanage -p "$@" &> /dev/null
}

if (( ! $+commands[trash] )); then
  function trash {
    print -N "${@:a}" | xargs -0 osascript -e '
      on run theFilePaths
        tell application "Finder"
          set thePOSIXFiles to {}
          repeat with aFilePath in theFilePaths
            set aPOSIXFile to aFilePath as POSIX file
            if exists aPOSIXFile
              set end of thePOSIXFiles to aPOSIXFile
            end if
          end repeat
          move every item of thePOSIXFiles to trash
        end tell
      end run
    ' &>/dev/null
  }
fi

# Delete .DS_Store and __MACOSX directories.
function rm-osx-cruft {
  find "${@:-$PWD}" \( \
    -type f -name '.DS_Store' -o \
    -type d -name '__MACOSX' \
  \) -print0 | xargs -0 rm -rf
}

