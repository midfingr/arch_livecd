#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# environment variables
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'leafpad'; else echo 'nano'; fi)"	# leafpad, nano

PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# pacman aliases (if desired, adapt for your favourite AUR helper)
alias pac="sudo /usr/bin/pacman -S"		# default action	- install one or more packages
alias pacu="sudo /usr/bin/pacman -Syu"		# '[u]pdate'		- upgrade all packages to their newest version
alias pacr="sudo /usr/bin/pacman -Rns"		# '[r]emove'		- uninstall one or more packages
alias pacs="/usr/bin/pacman -Ss"		# '[s]earch'		- search for a package using one or more keywords
alias paci="/usr/bin/pacman -Si"		# '[i]nfo'		- show information about a package
alias paclo="/usr/bin/pacman -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
alias pacc="sudo /usr/bin/pacman -Scc"		# '[c]lean cache'	- delete all not currently installed package files
alias paclf="/usr/bin/pacman -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
alias pacexpl="sudo /usr/bin/pacman -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed 
alias pacimpl="sudo /usr/bin/pacman -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

# Custom
alias led='leafpad ~/.bashrc'
alias bsu='source ~/.bashrc'
alias psync='sudo pacman -Syy'
alias paco='sudo pacman -Sc && sudo pacman-optimize'
alias pcf='profile-cleaner f'
alias pcc='profile-cleaner c'
alias pcg='profile-cleaner gc'
alias yd='youtube-dl'
alias lcp='sudo localepurge'
alias lcc='sudo /usr/bin/localepurge-config'
alias speed='speedtest-cli'
alias q='exit'
alias md='sudo updatedb'
alias fig='sudo leafpad /etc/pacman.conf'
alias yrt='yaourt -S'
