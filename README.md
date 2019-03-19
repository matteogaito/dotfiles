# My dotfiles

there are a lot of methods to put dotfile on git [link](https://dotfiles.github.io/)

I use a very simple way, you need only git command :)

The main concept of this method is to use $HOME as workir but put on repo only what you *add* 

````
git init --bare $HOME/.dotfiles
````

create a new alias in order to configure git with home as workir
````
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
````

*ATTENTION* hide untracked files to "status" command
````
dotfile config --local status.showuntrackedfiles no
````

Perfect, now you can add new files
````
dotfile add .vimrc
dotfile commit
````

For pushing on origin/master, remember to change the url with your remote repository
````
dotfile remote add origin git@github.com:matteogaito/dotfiles.git
dotfile push origin master
````

## Restore dotfiles on new installation
Clone the bare repository
````
git clone --bare git@github.com:matteogaito/dotfiles.git $HOME/.dotfiles
````
Recover the files
````
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
````
After this operation you will have again your configurations file and i hope "dotfile" alias command.
