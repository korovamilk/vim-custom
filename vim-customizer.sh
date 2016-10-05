#!/bin/bash
# vim-customizer.sh
# ops [at] agate [punkt] io
# v.20160127
TODAY=$(date +%Y%m%d)
VIMHOME=${HOME}/.vim
echo "This is going to customize vim for user $USER"
echo
echo "safe-copying .vim*"
mkdir -p ${HOME}/SAFE/vim.backups/
mkdir ${HOME}/SAFE/vim-customizer.${TODAY}.SAFE/
mv ${HOME}/.vim* ${HOME}/SAFE/vim-customizer.${TODAY}.SAFE/
echo
echo "(re)creating vim directories"
mkdir -p ${HOME}/.vim/colors/
echo 
echo "getting files"
git clone https://github.com/VundleVim/Vundle.vim.git ${VIMHOME}/bundle/Vundle.vim
curl -LSso ${HOME}/.vimrc									https://raw.githubusercontent.com/korovamilk/vim-custom/master/.vimrc
curl -LSso ${VIMHOME}/colors/badwolf.vim					https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/badwolf.vim
curl -LSso ${VIMHOME}/colors/molokai.vim					https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/molokai.vim
curl -LSso ${VIMHOME}/colors/onedark.vim                    https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/onedark.vim
curl -LSso ${VIMHOME}/colors/summerfruit256.vim             https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/summerfruit256.vim
curl -LSso ${VIMHOME}/colors/tomorrow.vim                   https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/tomorrow.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night-bright.vim      https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/tomorrow-night-bright.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night-eighties.vim    https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/tomorrow-night-eighties.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night.vim             https://raw.githubusercontent.com/korovamilk/vim-custom/master/colors/tomorrow-night.vim
echo
echo "installing vim plugins"
vim +PluginInstall +qall
echo
echo "done."
exit 0
