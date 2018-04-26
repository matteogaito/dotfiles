# My dotfiles

there are a lot of method for put dotfile on git [link](https://dotfiles.github.io/)

I use a very simple way, you need only git command :)

The main concept of this method is use $HOME as workir but put on repo only what you *add* 

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
````



