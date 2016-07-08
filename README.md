# vim-custom
vim customization files and scripts

easy one line vim custom setup:

```
curl https://raw.githubusercontent.com/korovamilk/vim-custom/master/vim-customizer.sh | bash
```

the above command will:
* move your existing .vim* files and directories (if any) to ${HOME}/SAFE directory
* install Vundle (https://github.com/VundleVim/Vundle.vim)
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

Tested under:  
CentOS 6.7  
Debian 7  
Debian 8  
Linux Mint 17.3  
Linux Mint 18  

beware: it may not work for you and/or destroy your computer ;-)  
