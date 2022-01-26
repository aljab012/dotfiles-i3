# dotfiles

### How to manage your dotfiles?
- Run `git init --bare ~/.dotfiles`
- Place the following in your `zshrc` file  
`alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
- Run `config config status.showUntrackedFiles no`
- To use it  
`config add <file>`  
`config commit -m "<message>`  
`config push`


[More details](https://wiki.archlinux.org/title/Dotfiles)