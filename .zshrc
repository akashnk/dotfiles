source $HOME/.zpreztorc
#source /usr/lib/prezto/init.zsh
source $HOME/.zprezto/init.zsh

#Autoload extra modules for youtube like urls
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic 
zle -N self-insert url-quote-magic



# Java path
JAVA_HOME=/home/skyone/jdk1.8.0_51
export JAVA_HOME
export PATH=$PATH:/home/skyone/jdk1.8.0_51/bin
export PATH=/home/skyone/jdk1.8.0_51/bin:$PATH
export PATH=$PATH:/home/skyone/android-sdk-linux/platform-tools/
export PATH=$PATH:/home/skyone/android-sdk-linux/tools/
export PATH=$PATH:/home/skyone/Kerkythea2008/
export PATH="/usr/lib/ccache/bin/:$PATH"
export MOZ_DISABLE_PANGO=1
export WINEARCH=win32 
export WINEPREFIX=~/win32
export PATH=$PATH:~/bin
# XDG
XDG_CONFIG_HOME="$HOME/.config"
# Eclipse path
export PATH=$PATH:/home/skyone/eclipse/

#xterm 64 bit colors
export TERM=xterm-256color
#eval 'dircolors $HOME/.dircolors/dircolors.zenburn'
#alias grep='grep --color'
#alias ls='ls --color=auto'

# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# Pacman alias
alias pacupg='sudo pacman -Syu'		# Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacin='sudo pacman -S'		# Install specific package(s) from the repositories
alias pacins='sudo pacman -U'		# Install specific package not from the repositories but from a file 
alias pacr='sudo pacman -R'		# Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrd='sudo pacman -Rdd'          # Remove the specified package(s), forcefully
alias pacrm='sudo pacman -Rns'		# Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'		# Display information about a given package in the repositories
alias pacreps='pacman -Ss'		# Search for package(s) in the repositories
alias pacloc='pacman -Qi'		# Display information about a given package in the local database
alias paclocs='pacman -Qs'		# Search for package(s) in the local database
alias paclo="pacman -Qdt"		# List all packages which are orphaned
alias pacc="sudo pacman -Scc"		# Clean cache - delete all not currently installed package files
alias paclf="pacman -Ql"		# List all files installed by a given package
alias pacexpl="pacman -D --asexp"	# Mark one or more installed packages as explicitly installed 
alias pacimpl="pacman -D --asdep"	# Mark one or more installed packages as non explicitly installed
alias ipinfo="/home/skyone/.scripts/ipinfo"
alias livecricket="/home/skyone/.scripts/livecricket.py"
alias ytdm='youtube-dl -o "/home/skyone/Videos/Youtube-downloads/%(title)s.%(ext)s" -f 18'  #360p youtube downloads
alias ytds='youtube-dl -o "/home/skyone/Videos/Youtube-downloads/%(title)s.%(ext)s" -f 5'   #240p youtube downloads
alias mplayer='mplayer -ao alsa:device=equal'

# python calculator
alias calc='python3 -ic "from math import *; import cmath"'

# startx
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
