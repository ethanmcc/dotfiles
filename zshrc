# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast aws brew gem jira npm pep8 pip python gnu-utils pyenv ssh-agent kubectl docker golang)
zstyle :omz:plugins:ssh-agent identities id_rsa ethanmcc_netxmv_id_rsa ethanmcc_dash_id_rsa

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# User configuration

export GOPATH=~/go

# removed 1/20/16 - $HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/embedded/bin:/usr/local/opt/ruby/bin
# Virtualenv Wrapper configuration
export WORKON_HOME=~/.virtualenvs
source /usr/local/homebrew/bin/virtualenvwrapper.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
eval $(/usr/libexec/path_helper -s)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/redshiftenv
source ~/pgenv
source ~/cosmosenv-prod
source ~/gopuff-event-hub

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/private/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/private/tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/private/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/private/tmp/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/sls.zsh

bindkey '^X^T' fzf-file-widget
bindkey '^T' transpose-chars
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
pyenv virtualenvwrapper

export PATH=$PATH:/usr/local/homebrew/opt/libpq/bin:$GOPATH/bin
export GOPRIVATE=github.com/nextmv-io/*,github.com/gopuff/*

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/ethanmccreadie/git/firedrill/node_modules/tabtab/.completions/slss.zsh
