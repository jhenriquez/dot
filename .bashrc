#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mux='tmuxinator'
alias cumber='cucumber.js --format=pretty'

#PS1='\e[46m\u @ \h\e[0m \e[43m\W >\e[0m '

# Powerline-shell

function _update_ps1() {
 PS1="$(~/.powerline-shell.py --cwd-mode fancy --colorize-hostname --mode patched --cwd-max-depth 3 $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/opt/android-sdk/tools # Add Android-SDK to PATH
PATH=$PATH:/usr/lib/smlnj/bin # Add sml tools to PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="/home/polo/.nvm"
export EDITOR=vim
export NODE_PATH=$NODE_PATH:./lib:./

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval $(dircolors ~/.dircolors)
