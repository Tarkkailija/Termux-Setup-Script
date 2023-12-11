#!/bin/sh

# -y = auto yes, no hands required
echo Running Script
cd ~
apt update && apt upgrade -y 
pkg install python wget neovim htop fastfetch screenfetch neofetch openssh nodejs git zip curl libxml2-utils grep htop httping dnsutils ffmpeg nnn lua-language-server clang ripgrep fd ecj dx -y
termux-setup-storage
#following are for nvim: python git neovim openssh nodejs or "nodejs-lts" libxm12-utils grep lua-language-server clang ripgrep fd, ecj and dx for java

#Oh my zsh
# First, clone this repository by typing...
git clone https://github.com/adi1090x/termux-omz.git
# Change to termux-omz directory
cd termux-omz
# Make script executable
chmod +x install
# Run install script
./install
# And Done, oh-my-zsh is successfully installed on your termux


#Theme1 Catppuchin
curl -o $HOME/.termux/colors.properties https://raw.githubusercontent.com/catppuccin/termux/main/Macchiato/colors.properties

#theme2 Termux-Style
# Go to home dir - 
cd $HOME
# Clone this repository (use `gh repo clone adi1090x/termux-style` if you want to use the GitHub CLI)- 
git clone https://github.com/adi1090x/termux-style
# Change to termux-style dir -
cd termux-style
# To install it, run -
./install
# And follow the steps, it'll be installed on your system.
clear
echo run termux-style to style your termux terminal

#nerdfonts
git clone https://github.com/notflawffles/termux-nerd-installer.git
cd termux-nerd-installer
make install
#opens menu
termux-nerd-installer l
#installs font
termux-nerd-installer i 3270
#sets font
termux-nerd-installer s 3270

#final
echo termux-reload-settings
clear
neofetch --ascii_distro Arch
echo input "exit" and reopen to restart the program
echo "paste 
neofetch --ascii_distro Arch
echo input exit and reopen to restart the program and  paste in the CL " git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim " to install neovim setup
termux-reload-settings
