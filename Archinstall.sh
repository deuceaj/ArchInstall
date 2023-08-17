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
sleep 2                                                                               
mkdir ~/GitHub

cd ~/GitHub
git clone https://github.com/arcolinux/arcolinux-spices
cd ~/GitHub/arcolinux-spices/usr/share/arcolinux-spices/scripts/
sudo ./get-the-keys-and-repos.sh
sudo pacman -Sy

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

#Prep Stage
	qt5-wayland 
    qt5ct
    qt6-wayland 
    qt6ct
    qt5-svg
    qt5-quickcontrols2
    qt5-graphicaleffects
    gtk3 
    polkit-gnome 
    pipewire 
    wireplumber 
    jq 
    wl-clipboard 
    cliphist 
    python-requests 
    pacman-contrib

#My core apps

	kitty 
    mako 
    waybar
    swww 
    swaylock-effects 
    wofi
	rofi
    wlogout 
    xdg-desktop-portal-hyprland 
    swappy 
    grim 
    slurp     
    btop
    brave-bin
    nemo
    mpv
    # pamixer 
    pavucontrol 
    bluez 
    bluez-utils 
    blueman 
    network-manager-applet 
    gvfs 
    file-roller
    starship 
    papirus-icon-theme 
    ttf-jetbrains-mono-nerd 
    noto-fonts-emoji 
    lxappearance 
    xfce4-settings
    nwg-look-bin
    sddm

	archlinux-logout-git
	bat
	btop
	btrfs-progs
	cifs-utils
	ckb-next
	corectrl
	discord
	foliate
	git
	grub-customizer
	neovim
	neofetch
	openssh
	partitionmanager
	unzip
	visual-studio-code-bin
	# xdo
	xdg-utils
	# xf86-video-amdgpu
	# xfce4-power-manager
	# xorg-server
	# xorg-xinit
	zsh
	zsh-autosuggestions

	###############
	#### Sound ####
	###############
	# pavucontrol
	# playerctl
	# volumeicon

	###############
	#### Files ####
	###############
	baobab
	gvfs
	gvfs-smb
	gvfs-nfs
	ncdu
	ntfs-3g
	ranger
	# xdg-user-dirs

	################
	#### Images ####
	################
	imagemagick
	viewnior

	####################
	#### Multimedia ####
	####################
	ffmpeg
	ffmpegthumbnailer
	mpv
	tumbler
	youtube-dl


	####################
	#### ARCHIVE    ####
	####################
	# file-roller
	# gzip
	# p7zip
	# sharutils
	# ufw
	# unrar
	# unzip


	####################
	#### Gaming     ####
	####################
	steam
	proton-ge-custom-bin 
	lib32-vulkan-radeon


	####################
	#### Utilities  ####
	####################
	# echer-bin
	# glow
	grub-btrfs
	grub-customizer
	# ninja
	# libvncserver
	okular
	obsidian
	partitionmanager

	####################
	#### VirtMan    ####
	####################
	# bridge-utils
	# dmidecode
	# dnsmasq
	# edk2-ovmf
	# iptables-nft
	# libguestfs
	# libvirt
	# qemu-desktop
	# qemu-full
	# swtpm
	# vde2
	# virt-manager
	# virt-viewer

 
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
input-remapper-git
ocs-url
pamac-aur
pcloud-drive
spicetify-cli
spotify
spotifywm-git
timeshift
timeshift-autosnap
ttf-ms-fonts
# xdg-ninja 
# xqp
# # zscroll-git
# exo-devel 
# libxfce4util-devel 
# libxfce4ui-devel 
# thunar-git
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

# sleep 2

# if [[ ! -e ~/.config ]]; then
#     mkdir ~/.config
# elif [[ ! -d ~/.config ]]; then
#     echo ".config already exists but is not a directory" 1>&2
# fi

# if [[ ! -e ~/.local ]]; then
#     mkdir ~/.local
# elif [[ ! -d ~/.local ]]; then
#     echo ".local already exists but is not a directory" 1>&2
# fi



# #cp -r ~/GitHub/ArchInstall/config/* ~/.config
# #cp -r ~/GitHub/ArchInstall/local/* ~/.local
