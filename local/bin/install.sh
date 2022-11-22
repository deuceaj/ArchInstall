#!/bin/bash
echo "--------------------------------------"
echo "--          Install  Programs      --"

#sudo pacman -S bspwm rofi sxhkd arandr neofetch xdo neovim firefox-developer-edition nitrogen openssh alacritty zsh sx corectrl polkit-gnome git zsh-autosuggestions btop gvfs gvfs-smb gvfs-nfs ttf-jetbrains-mono
#
#

echo "--------------------------------------"
echo "--          Install  ArchTweaks      --"
echo "--------------------------------------"

#cd ~/
#git clone https://github.com/arcolinux/arcolinux-spices
#cd ~/arcolinux-spices/usr/share/arcolinux-spices/scripts/
#./get-the-keys-and-repos.sh


echo "--------------------------------------"
echo "--          Install AUR             --"
# yay -S visual-studio-code-bin exo-devel libxfce4ui-devel libxfce4util-devel thunar-git picom-animations-git timeshift timeshift-autosnap archlinux-logout-git



wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.0/FiraMono.zip
unzip FiraMono.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.0/Meslo.zip
unzip Meslo.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
unzip JetBrainsMono.zip -d /usr/share/fonts
fc-cache -vf