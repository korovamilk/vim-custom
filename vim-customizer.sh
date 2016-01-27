#!/bin/bash
# vim-customizer.sh
# v.20160127
TODAY=$(date +%Y%m%d)
VIMHOME=${HOME}/.vim
echo "This is going to customize vim for user $USER"
cd ${HOME}
echo 
echo "safe-copying .vim*"
mkdir ${VIMHOME}/vim-customizer.${TODAY}.SAFE
mv .vim* ${VIMHOME}/vim-customizer.${TODAY}.SAFE/
echo
echo "creating vim directories"
mkdir -p ${HOME}/.vim/colors/
mkdir -p ${VIMHOME}/SAFE/vim.backups
echo
echo "getting files"
curl -LSso ${VIMHOME}/colors/onedark.vim https://raw.githubusercontent.com/korovamilk/onedark.vim/master/colors/onedark.vim
git clone https://github.com/VundleVim/Vundle.vim.git ${VIMHOME}/bundle/Vundle.vim
curl -LSso ${VIMHOME}/colors/onedark.vim                    https://raw.githubusercontent.com/korovamilk/onedark.vim/master/colors/onedark.vim
curl -LSso ${VIMHOME}/colors/summerfruit256.vim             https://raw.githubusercontent.com/korovamilk/summerfruit256.vim/master/colors/summerfruit256.vim
curl -LSso ${VIMHOME}/colors/tomorrow.vim                   https://raw.githubusercontent.com/korovamilk/vim-tomorrow-theme/master/colors/tomorrow.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night.vim             https://raw.githubusercontent.com/korovamilk/vim-tomorrow-theme/master/colors/tomorrow-night.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night-bright.vim      https://raw.githubusercontent.com/korovamilk/vim-tomorrow-theme/master/colors/tomorrow-night-bright.vim
curl -LSso ${VIMHOME}/colors/tomorrow-night-eighties.vim    https://raw.githubusercontent.com/korovamilk/vim-tomorrow-theme/master/colors/tomorrow-ni-eightiesght.vim
curl -LSso ${HOME}/.vimrc https://raw.githubusercontent.com/korovamilk/vim-custom/master/.vimrc
echo
echo "installing vim plugins"
vim +PluginInstall +qall
echo
echo "done."
exit 0
