# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ ! -d ~/repos/dotfiles ]; then
	git clone https://github.com/$GITHUB_USER/dotfiles.git ~/repos/dotfiles/
fi

if [ -d ~/repos/dotfiles/HOME_DIR ]; then
	cp ~/repos/dotfiles/HOME_DIR/.git* ~/
	cp ~/repos/dotfiles/HOME_DIR/.vimrc ~/
fi

if [ -f ~/.git-credentials.asc ]; then
	gpg -d .git-credentials.asc > ~/.git-credentials
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH


