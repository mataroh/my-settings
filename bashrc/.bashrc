# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls='exa'
alias l='exa -l'
alias la='exa -a'
alias lla='exa -la'
alias lt='exa --tree'
alias ..='cd ..'
alias hsi='history | grep'
alias pes='ps -aux | grep'
alias list='lsof -n -P -i | grep '

if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#Configuração Terminal
PS1="\w
→ "
