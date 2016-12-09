#!/bin/bash
# vim-customizer.sh
# ops [at] agate [punkt] pw
# v.20161005
TODAY=$(date +%Y%m%d)
VIMHOME=${HOME}/.vim
echo "This is going to update vimrc for user $USER"
echo
echo "safe-copying .vimrc"
mkdir -p ${HOME}/SAFE/vim.backups/
mv ${HOME}/.vimrc ${HOME}/SAFE/vim.backups/vimrc.${TODAY}
echo
echo 
echo "getting files"
curl -LSso ${HOME}/.vimrc https://raw.githubusercontent.com/korovamilk/vim-custom/master/.vimrc
echo
vim +PluginInstall +qall
echo "done."
exit 0
