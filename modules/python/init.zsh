#
# Enables local Python package installation.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Sebastian Wiesner <lunaryorn@googlemail.com>
#

# Load manually installed pyenv into the shell session.
if [[ -s "$HOME/.pyenv/bin/pyenv" ]]; then
  path=("$HOME/.pyenv/bin" $path)
  eval "$(pyenv init -)"

# Load package manager installed pyenv into the shell session.
elif (( $+commands[pyenv] )); then
  eval "$(pyenv init -)"

  if (($+commands[pyenv-virtualenv] )); then
    eval "$(pyenv virtualenv-init -)"
    export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  fi

# anaconda python installer
elif [[ -d "$HOME/.anaconda3/bin" ]]; then
  path=($HOME/.anaconda3/bin $path)
  $HOME/.anaconda3/bin/conda config --set changeps1 false
elif [[ -d "$HOME/.anaconda/bin" ]]; then
  path=($HOME/.anaconda/bin $path)
  $HOME/.anaconda/bin/conda config --set changeps1 false

# Prepend PEP 370 per user site packages directory, which defaults to
# ~/Library/Python on Mac OS X and ~/.local elsewhere, to PATH. The
# path can be overridden using PYTHONUSERBASE.
else
  if [[ -n "$PYTHONUSERBASE" ]]; then
    path=($PYTHONUSERBASE/bin $path)
  elif [[ "$OSTYPE" == darwin* ]]; then
    path=($HOME/Library/Python/*/bin(N) $path)
  else
    # This is subject to change.
    path=($HOME/.local/bin $path)
  fi
fi

# Return if requirements are not found.
if (( ! $+commands[python] && ! $+commands[pyenv] )); then
  return 1
fi

# Load virtualenvwrapper into the shell session, unless requested not to
zstyle -t ':prezto:module:python' skip-virtualenvwrapper-init
if (( $? && $+commands[virtualenvwrapper.sh] )); then
  # Set the directory where virtual environments are stored.
  export WORKON_HOME="${WORKON_HOME:-$HOME/.virtualenvs}"

  # Disable the virtualenv prompt.
  export VIRTUAL_ENV_DISABLE_PROMPT=1

  source "$commands[virtualenvwrapper.sh]"
fi

export SCIKIT_LEARN_DATA="$HOME/.scikit_learn_data"

#
# Aliases
#

alias py='python'
