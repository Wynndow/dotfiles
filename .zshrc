# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Colored `man` pages on OSX
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
# export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias activate="source ./venv/bin/activate"
alias go="git checkout"
unalias gds # to prevent conflict with the GDS cli
alias myip="ipconfig getifaddr en0"
alias weather="curl wttr.in/~london"
alias decode-cert="pbpaste | sed '/-----/d' | base64 -D | openssl x509 -inform der -text"

. `brew --prefix`/etc/profile.d/z.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/python/libexec/bin:$PATH" # Add unversioned Python3 symlinks to path - installed by Brew
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/opt/apache-maven-3.5.4/bin:$PATH" # Add maven to PATH
export PATH="/Users/christopherwynne/go/bin:$PATH" # Add Go to PATH
export PATH="$PATH:/usr/local/kubebuilder/bin" # Add kubebuilder to PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" # Use gnu-sed as sed instead of gsed (installed with brew)
export GOPATH="/Users/christopherwynne/go"
export JAVA_HOME=$(/usr/libexec/java_home -v 11) # Set Java verison to 11
export VIRTUALENVWRAPPER_PYTHON="/usr/local/opt/python/libexec/bin/python" 
source /usr/local/bin/virtualenvwrapper.sh
export WORK_ON=~/Envs # Set home directory for Virtualenvwrapper
export GIPHY_API_KEY=
# export CPPFLAGS="-I/usr/local/opt/openssl/include" # Link to brew installed openssl - clang craps out otherwise
# export LDFLAGS="-L/usr/local/opt/openssl/lib" # Link to brew installed openssl - clang craps out otherwise
eval "$(rbenv init -)" # Make rbenv do it's thing
GPG_TTY=$(tty)
export GPG_TTY
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export SNYK_TEST=

eval "$(direnv hook zsh)" # hook for direnv

# added by travis gem
[ -f /Users/christopherwynne/.travis/travis.sh ] && source /Users/christopherwynne/.travis/travis.sh
# export NVM_DIR="$HOME/.nvm"          # NVM stuff commented out cos it makes things slow as shit.
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/node@10/bin:$PATH"
