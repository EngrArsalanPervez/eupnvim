apt purge vim
apt purge neovim

snap remove nvim --purge

whereis vim
whereis nvim

rm -rf /usr/bin/nvim


locate vim

rm -rf /home/network/.vim*
rm -rf /home/network/.local/share/nvim*
rm -rf /home/network/.local/state/nvim*
rm -rf /home/network/Desktop/nvim*
rm -rf /home/network/Desktop/DevOps/nvim*
rm -rf /home/network/Documents/eupnvim-main.zip*
rm -rf /home/network/Downloads/eupnvim*
rm -rf /home/network/Downloads/YouCompleteMe-master/

rm -rf /root/.vim*
rm -rf /root/eupvim/
rm -rf /root/.cache/nvim*
rm -rf /root/.local/state/nvim*
rm -rf /root/.local/share/nvim/
rm -rf /root/.config/nvim*
rm -rf /usr/share/vim*

# clear trash



apt clean
apt autoremove
apt update
apt upgrade
dpkg --configure -a
apt install ubuntu-desktop
reboot

#apt install vim
#apt install neovim
#apt remove neovim


# install nvim
populate init.vim
