add-zsh-hook -Uz chpwd(){ source <(tea -Eds) }  #tea

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NOTES_DIR="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/notes/"
export LOCAL_DIR="$HOME/.local/bin"
export PYTHON_DIR="$HOME/Library/Python/3.9/bin/"
export DENO_INSTALL="$HOME/.deno/"
export GNU_COREUTILS="/opt/homebrew/opt/gawk/libexec/gnubin"

export PATH="$LOCAL_DIR:$GNU_COREUTILS:$PYTHON_DIR:$DENO_INSTALL/bin:$HOME/Developer/bin/:$PATH"

eval "$(starship init zsh)"

. /opt/homebrew/etc/profile.d/z.sh

alias zshconfig='lvim ~/.zshrc'
alias v='lvim -w ~/.vimlog "$@"'
alias vi='lvim -w ~/.vimlog "$@"'
alias vim='lvim -w ~/.vimlog "$@"'
alias zn='vim $NOTES_DIR/$(date +"%Y%m%d%H%M.md")'


alias ls='exa --icons -F -H --group-directories-first --git -1'
alias sl=ls
alias ll='exa -alF'
alias hcat='highlight -O ansi'

alias c='clear'
alias s='source ~/.zshrc'

alias ga='git add'
alias gc='git commit'
alias server='ssh -i $HOME/.ssh/id_ed25519_github'
alias servercopy='scp -i $HOME/.ssh/id_ed25519_github'
alias surreal='docker run --rm -p 8000:8000 surrealdb/surrealdb:latest'

fortune | cowsay

set -o vi

export GPG_TTY=$(tty)
