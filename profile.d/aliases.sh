# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m '
alias gs='git status'
alias gl='git log'
alias gi='git init'
alias gpao='git push origin master'
alias clone='git clone '
alias grao='git remote add origin '
alias amend='git commit --amend'

#non-git alias
alias t='touch'


case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
