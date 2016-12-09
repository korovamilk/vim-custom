# vim-custom
vim customization files and scripts

easy one line vim custom setup:

```
curl https://raw.githubusercontent.com/korovamilk/vim-custom/master/vim-customizer.sh | bash
```

the above command will:
* move your existing .vim* files and directories (if any) to ${HOME}/SAFE directory
* install Vundle:
$ git clone https://github.com/VundleVim/Vundle.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall 
* download a small set of vim color themes (see .vimrc for updated list)
* download my .vimrc
* autoinstalls all custom vim plugins (see .vimrc for updated list)

Additionaly, you may want to install powerline fonts as follows:

```
git clone https://github.com/Lokaltog/powerline.git
sudo mkdir  /usr/share/fonts/truetype/Powerline/
sudo cp ~/powerline/font/PowerlineSymbols.otf /usr/share/fonts/truetype/Powerline/
sudo cp ~/powerline/font/10-powerline-symbols.conf /etc/fonts/conf.d/
sudo fc-cache -vf /usr/share/fonts/truetype/Powerline
```

Included is also a script to just update .vimrc  
This is useful if your vim is already customized and you just want to sync small changes of vimrc on this repo  
  
  ```
  curl https://raw.githubusercontent.com/korovamilk/vim-custom/master/vimrc-updater.sh | bash
  ```
  

Tested under:  
CentOS     
Debian  
Linux Mint  
FreeBSD 

beware: it may not work for you and/or destroy your computer ;-)  
