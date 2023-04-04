#┏━┓╋┏┓╋╋╋╋╋╋┏━━━┓╋╋╋╋╋┏━━━┓┏┓╋╋╋╋┏━┓┏━┓
#┃┃┗┓┃┃╋╋╋╋╋╋┗┓┏┓┃╋╋╋╋╋┃┏━┓┣┛┗┓╋╋╋┃┏┛┃┏┛
#┃┏┓┗┛┣┳━━┳━━┓┃┃┃┣━━┳┓┏┫┗━━╋┓┏╋┓┏┳┛┗┳┛┗┓
#┃┃┗┓┃┣┫┏━┫┏┓┃┃┃┃┃┃━┫┗┛┣━━┓┃┃┃┃┃┃┣┓┏┻┓┏┛
#┃┃╋┃┃┃┃┗━┫┗┛┣┛┗┛┃┃━╋┓┏┫┗━┛┃┃┗┫┗┛┃┃┃╋┃┃
#┗┛╋┗━┻┻━━┻━━┻━━━┻━━┛┗┛┗━━━┛┗━┻━━┛┗┛╋┗┛

# This is my fish config. Its not really that great, but it gets the job done! :)
# Like an wise man once said: if it aint broken, dont fix it!
#
if status is-interactive
    # Commands to run in interactive sessions can go here
end

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

#
####################### CUSTOMISATION ######################

#remove greeting message
set fish_greeting 

# Cool ascii art go brrr
colorscript random

# my aliases

alias clear="clear && colorscript random"
alias vim="nvim"
alias nvd="neovide"
alias hx="helix"
#faster make compiling
alias make="make -j 24" 
alias ..="cd .."
alias home="cd ~"

# nvim directory
alias vimdir='cd ~/.config/nvim'
# always ask to copy/move/remove something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Changing 'ls' to 'exa' so it looks good :)
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

#changing 'cat' to 'bat' for a fricking fancy look!
alias cat='bat'

# changing 'htop' to 'btop' so it looks good
alias htop='btop -p 0'

# rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# set 'python' to 'python3'
alias python='python3'

starship init fish | source
#########################################################################################
