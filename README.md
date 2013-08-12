###VIM Notes

This containst instructions and notes for maintaining vim settings on github.

##Pull a new plugin from github
	cd ~/.vim
	git submodule add git://github.com/person/repo bundle/repo'
	git submodule init && git submodule update

##Push changes to my github repository
	git push -u origin master
You will be prompted for the user name and password, so have those handy.

##Update plugins
*This command does not work.  Need to figure out how do get it to work.*
	git submodule foreach git pull

##Pull the vim settings to a new machine
	cd ~/
	mkdir .vim
	mv .vimrc .vim/vimrc
	ln -s ~/.vim/vimrc .vimrc
	cd .vim
	git clone https://github.com/rbultman/vimrc-settings.git .
	git submodule init && git submodule update
	

