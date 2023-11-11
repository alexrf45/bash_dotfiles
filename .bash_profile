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
