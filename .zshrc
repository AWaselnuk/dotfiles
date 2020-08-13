# Path to your oh-my-zsh installation.
export ZSH=/Users/awaselnuk/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=awesomepanda

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
plugins=(git rails colorize colored-man rake)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/awaselnuk/shell-plugins"

# Add packages to path for crystallang
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

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

alias be="bundle exec"
alias itest="bundle exec ruby -Itest"
alias cdsuits="cd ~/code/mamp/suits/wp-content/themes/suits_his_style"
alias bs="browser-sync start --proxy='localhost:3000'"
alias vi="vim"

# Reboot broken mac audio driver
alias audiofix="sudo launchctl stop com.apple.audio.coreaudiod && sudo launchctl start com.apple.audio.coreaudiod"

# Delete every local git branch that has been merged to master and prune
alias grr="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d && git prune"

# FUNCTIONS

# Loop spec until it fails

loopspec() {
  while (bundle exec rspec $1); do :; done
}

# Launch ngrok
ngrok() {
  ~/code/ngrok http -host-header=rewrite $1
}

# find files given an extension name and sort them by LOC
find_by_loc() {
  find . -name $1 | xargs wc -l | sort -rn | head
}

# list running servers at a given port
listsv() {
  lsof -wni tcp:$1
}

# kill server at a given port
killsv() {
  kill -9 $1
}

# Theme Kit installation
# http://themekit.cat/
PATH=/Users/awaselnuk/.themekit:$PATH

# Z INSTALLATION
. `brew --prefix`/etc/profile.d/z.sh

# Source scripts for Shopify dev
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/awaselnuk/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/awaselnuk/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
