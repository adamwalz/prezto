#
# Defines Homebrew aliases.
#
# Authors:

#   Adam Walz <adam@adamwalz.net>
#

#
# Variables
#

if (( $+commands[fzf] )); then
  eval "$(fzf --zsh)"

  fg="#cdd6f4"
  bg="#1e1e2e"
  bgplus="#313244"
  hl="#f38ba8"
  prompt="#cba6f7"
  accent="#f5e0dc"

  export FZF_DEFAULT_OPTS=" \
    --color=bg+:${gbplus},bg:${bg},spinner:${accent},hl:${hl} \
    --color=fg:${fg},header:${hl},info:${prompt},pointer:${accent} \
    --color=marker:${accent},fg+:${fg},prompt:${prompt},hl+:${hl}"

  if (( $+commands[fd] )); then
    export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --type=f"
    export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type=d"

    # Use (https://github.com/sharkdp/fd) fd for listing path candidates
    # The first argument to the function is the base path to start the traversal
    # See the source code (completion.{bash,zsh}) for the details
    _fzf_compgen_path() {
      fd --hidden --exclude .git . "$1"
    }

    # Use fd to generate the list for directory completion
    _fzf_compgen_dir() {
      fd --type=d --hidden --exclude .git . "$1"
    }
  fi

  if (( $+commands[bat] )); then
    export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
  fi

  if (( $+commands[eza] )); then
    export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
  fi

  _fzf_comprun() {
    local command=$1
    shift

    case "$command" in
      cd)
        if (( $+commands[eza] )); then
          fzf --preview 'eza --tree --color=always {} | head -200' "$@"
        else
          fzf --preview 'tree -C {} | head -200' "$@"
        fi
        ;;
      export|unset) fzf --preview "eval 'echo  \$' {}" "$@" ;;
      ssh)          fzf --preview 'dig {}' "$@" ;;
      *)
        if (( $+commands[bat] )); then
          fzf --preview "bat -n --color=always --line-range :500 {}" "$@"
        else
          fzf "$@"
        fi
        ;;
    esac
  }

  set --
  source "${0:h}/fzf-git.sh"
fi
