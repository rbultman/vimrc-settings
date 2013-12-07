## VIM Notes

This contains instructions and notes for maintaining vim settings on github.
They previously used Pathogen but I have now switched to [Vundle](https://github.com/gmarik/vundle#about) 
as the package manager.

## Install a new plugin
Just add a new Bundle line to the vimrc.  See the [Vundle](https://github.com/gmarik/vundle#about) 
documentation for details.

## Commit changes to local git repository
	git commit . -m "Some commit message."

or

	git commit someFileName -m "Some commit message."

## Push changes to my github repository
	git push -u origin master
You will be prompted for the user name and password, so have those handy.

## Update plugins
Start vim and type:
    :BundleInstall

## Pull the vim settings to a new machine
The intructions below require you to make modofications to your existing
vim settings.

	cd ~/
	mkdir .vim
	mv .vimrc .vim/vimrc
	ln -s ~/.vim/vimrc .vimrc
	cd .vim
	git clone https://github.com/rbultman/vimrc-settings.git .
	mkdir ~/.vim/bundle
	git clone https://github.com/gmarik/vundle.git bundle/vundle

The next two lines add bundle and another file to .gitignore.  Since
[Vundle](https://github.com/gmarik/vundle#about) manages the git clones for you, you don't need to use git
submodules and manually clone.

	echo bundle/ >> .gitignore
	echo .netrwhist >> .gitignore

Start vim and type:

	:BundleInstall

	

