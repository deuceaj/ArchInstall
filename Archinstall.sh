#!/usr/bin/env bash



echo -ne "
-------------------------------------------------------------------------

██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗        
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝        
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗       
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║       
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝       
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝        
                                                                                   
 █████╗ ██████╗  ██████╗██╗  ██╗████████╗██╗    ██╗███████╗███████╗██╗  ██╗███████╗
██╔══██╗██╔══██╗██╔════╝██║  ██║╚══██╔══╝██║    ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝
███████║██████╔╝██║     ███████║   ██║   ██║ █╗ ██║█████╗  █████╗  █████╔╝ ███████╗
██╔══██║██╔══██╗██║     ██╔══██║   ██║   ██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗ ╚════██║
██║  ██║██║  ██║╚██████╗██║  ██║   ██║   ╚███╔███╔╝███████╗███████╗██║  ██╗███████║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝

-------------------------------------------------------------------------
"
#mkdir ~/GitHub

#cd ~/GitHub
#git clone https://github.com/arcolinux/arcolinux-spices
#cd ~/GitHub/arcolinux-spices/usr/share/arcolinux-spices/scripts/
#sudo ./get-the-keys-and-repos.sh
#sudo pacman -Sy

cd ~/
echo -ne "
-------------------------------------------------------------------------
██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗         
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝         
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗        
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║        
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝        
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝         
                                                                                    
██████╗  █████╗  ██████╗███╗   ███╗ █████╗ ███╗   ██╗      ██████╗ ██╗  ██╗ ██████╗ 
██╔══██╗██╔══██╗██╔════╝████╗ ████║██╔══██╗████╗  ██║      ██╔══██╗██║ ██╔╝██╔════╝ 
██████╔╝███████║██║     ██╔████╔██║███████║██╔██╗ ██║█████╗██████╔╝█████╔╝ ██║  ███╗
██╔═══╝ ██╔══██║██║     ██║╚██╔╝██║██╔══██║██║╚██╗██║╚════╝██╔═══╝ ██╔═██╗ ██║   ██║
██║     ██║  ██║╚██████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║      ██║     ██║  ██╗╚██████╔╝
╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝      ╚═╝     ╚═╝  ╚═╝ ╚═════╝ 
nn
-------------------------------------------------------------------------
"
sleep 2
func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category Test

list=(


### Hyprland Basics
	hyprland
	polkit-gnome
	ffmpeg
	neovim
	viewnior
	rofi
	pavucontrol
	thunar
	starship
	wl-clipboard
	wf-recorder
	swaybg
	ffmpegthumbnailer
	tumbler
	playerctl
	noise-suppression-for-voice
	thunar-archive-plugin
	wlogout
	pamixer
	nwg-look-bin
	papirus-icon-theme
	dunst
	ttf-nerd-fonts-symbols-common
	otf-firamono-nerd
	inter-font
	ttf-fantasque-nerd
	noto-fonts
	noto-fonts-emoji
	ttf-jetbrains-mono-nerd
	ttf-icomoon-feather
	ttf-iosevka-nerd
	adobe-source-code-pro-fonts
	brightnessctl
	hyprpicker-git

	 bat
	 brave-bin
	 btop
	 ckb-next
	 cliphist 
	 corectrl    
	 discord
	 dunst
	 git
	# gnome-keyring 
	# grim
	 gtk3
	 gvfs-mtp
	# hyprpaper
	# lxappearance
	 neovim
	 neofetch	
	 pacman-contrib	
	 qt5-wayland 
	 qt5ct
	 qt6-wayland 
	 qt6ct
	 qt5-svg
	 qt5-quickcontrols2
	 qt5-graphicaleffects
	 slurp
	 starships
	 swappy
	 wl-clipboard 
	 zsh
	 zsh-autosuggestions
	 papirus-icon-theme 
	 ttf-jetbrains-mono-nerd 
	 noto-fonts-emoji 
		

	# ###############
	# #### Sound ####
	# ###############
	


	# ###############
	# #### Files ####
	# ###############
	 baobab
	 cifs-utils
	 ncdu
	 ntfs-3g
	# ranger
	 ueberzug
	 xdg-user-dirs

	# ################
	# #### Images ####
	# ################
	 imagemagick
	 viewnior

	# ####################
	# #### Multimedia ####
	# ####################
	 ffmpeg
	 ffmpegthumbnailer
	 mpv
	 obs-studio
	 youtube-dl


	# ####################
	# #### ARCHIVE    ####
	# ####################
	# file-roller
	# gzip
	# p7zip
	# sharutils
	# ufw
	# unrar
	# unzip


	# ####################
	# #### Gaming     ####
	# ####################
	# steam
	# proton-ge-custom-bin 
	# lib32-vulkan-radeon


	# ####################
	# #### Utilities  ####
	# ####################
	# balena-etcher
	 foliate
	 evince
	# grub-btrfs
	# grub-customizer	 
	 obsidian
	


	# # ####################
	# # #### Utilities  ####
	# # ####################
	bridge-utils
	dmidecode
	dnsmasq
	edk2-ovmf
	iptables-nft
	libguestfs
	libvirt
	qemu-desktop
	qemu-full
	swtpm
	vde2
	virt-manager
	virt-viewer

 
  
 
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################


echo -ne "
-------------------------------------------------------------------------
██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗ 
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝ 
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
                                                                            
 █████╗ ██╗   ██╗██████╗       ██████╗ ██╗  ██╗ ██████╗                     
██╔══██╗██║   ██║██╔══██╗      ██╔══██╗██║ ██╔╝██╔════╝                     
███████║██║   ██║██████╔╝█████╗██████╔╝█████╔╝ ██║  ███╗                    
██╔══██║██║   ██║██╔══██╗╚════╝██╔═══╝ ██╔═██╗ ██║   ██║                    
██║  ██║╚██████╔╝██║  ██║      ██║     ██║  ██╗╚██████╔╝                    
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝      ╚═╝     ╚═╝  ╚═╝ ╚═════╝                     
                                                                            
-------------------------------------------------------------------------
"
sleep 2

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	yay -S --noconfirm --needed $1
    fi
}

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category AUR  

list=(
archlinux-tweak-tool-git 
brave-bin
input-remapper-git
nordvpn-bin 
nordtray-bin
nordpass-bin
ocs-url
pamac-aur
pcloud-drive
spicetify-cli
spotify
spotifywm-git
timeshift
timeshift-autosnap
ttf-ms-fonts
otf-sora
ttf-comfortaa
visual-studio-code-bin
# xdg-ninja 
# xqp
# # zscroll-git
# exo-devel 
# libxfce4util-devel 
# libxfce4ui-devel 
# thunar-git
oh-my-zsh-git
oh-my-zsh-powerline-theme-git
zsh-theme-powerlevel10k
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

#########


# echo -ne "
# -------------------------------------------------------------------------
# ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗         
# ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║         
# ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║         
# ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║         
# ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗    
# ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝    
                                                          
#  ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ ███████╗   
# ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ ██╔════╝   
# ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗███████╗   
# ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║╚════██║   
# ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝███████║   
#  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝   
                                                                                                                                       
# -------------------------------------------------------------------------
# "

