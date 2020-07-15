.dotfiles
=========

![screenshot1](https://github.com/ktkk/.dotfiles/blob/master/screenshot1.png)
![screenshot2](https://github.com/ktkk/.dotfiles/blob/master/screenshot2.png)
![screenshot3](https://github.com/ktkk/.dotfiles/blob/master/screenshot3.png)

## To download .dotfiles
### **WARNING**: This will overwrite stuff like your .bashrc and .vimrc, so thse should be backed up before cloning 

```bash
$ echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'" >> .bashrc && source .bashrc
```
```bash
$ echo '$HOME/.dotfiles.git' >> .gitignore
```
```bash
$ git clone --bare https://github.com/ktkk/.dotfiles.git $HOME/.dotfiles.git && dotfiles checkout -f
```
Programs that should be installed (or at least that I have installed on my system) should be in .installed.txt

## Extra
[Custom Firefox theme](https://color.firefox.com/?theme=XQAAAAIgAQAAAAAAAABBKYhm849SCia2CaaEGccwS-xNKlhTF0Gdmgrt-MSYP_BJi3ulTyQ6uQYTBxP6in1K3CBj-xHrShb_hiDHwcWL6bwrs97I3hdB6A59jrIt2KNODfGJ2bTnF7hgeBDsblJ7sOgaiq8UlwJ01PwA0TwaH5SgqANSgQuVj6B6ja_-cR0kMyniVFlrmrtxM783nwfSuQeEQW3yzoFUwino3fK1QPfeTV2ZrP-KCTAA)

Custom GTK theme created with oomox located in .themes. Apply with eg. LXAppearance.
