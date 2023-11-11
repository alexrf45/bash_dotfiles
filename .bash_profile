PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin/:$GOROOT/bin:$GOPATH/bin"

export EDITOR=vim
export TERM='xterm-256color'
export VISUAL=nvim

#aws-cli ENV
export AWS_DEFAULT_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_CLI_AUTO_PROMPT=on-partial
export AWS_PAGER=
export GPG_TTY=$(tty)
#GH ENV
export GIT_AUTHOR_NAME='Sean Fontaine'
export GH_PAGER=


#GO
export GOPATH=$HOME/.local/projects/go
export GOROOT=$HOME/.local/bin/go


#RUST
export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"


. "$HOME/.cargo/env"
# shellcheck shell=sh disable=SC1091,SC2039,SC2166
# Check for interactive bash and that we haven't already been sourced.
if [ "x${BASH_VERSION-}" != x -a "x${PS1-}" != x -a "x${BASH_COMPLETION_VERSINFO-}" = x ]; then

    # Check for recent enough version of bash.
    if [ "${BASH_VERSINFO[0]}" -gt 4 ] ||
        [ "${BASH_VERSINFO[0]}" -eq 4 -a "${BASH_VERSINFO[1]}" -ge 2 ]; then
        [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion" ] &&
            . "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion"
        if shopt -q progcomp && [ -r /usr/share/bash-completion/bash_completion ]; then
            # Source completion code.
            . /usr/share/bash-completion/bash_completion
        fi
    fi

fi
