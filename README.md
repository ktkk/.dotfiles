<h1 align="center">
  <b>KatKak's .dotfiles</b>
</h1>

<p align="center">
<img src="https://raw.githubusercontent.com/ktkk/startpage/master/img/pfp.jpg" alt="img" width="100px">
</p>

## Screenshots

<p align="center">
<img src="https://github.com/ktkk/.dotfiles/blob/master/screenshot1.png" width="900px">
<img src="https://github.com/ktkk/.dotfiles/blob/master/screenshot2.png" width="900px">
<img src="https://github.com/ktkk/.dotfiles/blob/master/screenshot3.png" width="900px">
</p>

## To download .dotfiles
I use a bare git repository for my dotfiles. [Tutorial](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)

#### **WARNING**: This will overwrite stuff like your .bashrc and .vimrc. These should be backed up before cloning.

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

## Future plans
I'm currently refining stuff like my dunstrc and bspwmrc.
Future plans include simpler global color editing, adding one of those fancy firefox [startpages](https://github.com/ktkk/startpage), more Polybar modules (notification toggle) and a global light mode toggle.

I also like to add random stuff which would not necessarily be usefull for everyone, so feel free to fork this project.
