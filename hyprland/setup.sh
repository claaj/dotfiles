#----- Script para instalar Fedora Hyprland -----#

echo 'defaultyes=True' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=20' | sudo tee -a /etc/dnf/dnf.conf

sudo dnf update --refresh -y

sudo dnf install \
        https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install \
        https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf copr enable claaj/typst -y
sudo dnf copr enable solopasha/hyprland -y

sudo dnf install hyprland waybar light wlogout alacritty dbus-daemon stow network-manager-applet polkit-gnome wofi wlsunset wl-clipboard mako swaybg hyprshot grim slurp xwaylandvideobridge -y

sudo dnf install rust cargo rust-analyzer clang-devel zig cmake make just gcc meson ninja-build python-pip java-17-openjdk-devel neovim java-17-openjdk-jmods -y

sudo dnf install adw-gtk3-theme papirus-icon-theme -y

sudo dnf install nautilus evince file-roller gnome-software -y 

sudo dnf install ranger typst unzip -y

sudo dnf install htop stacer blueman -y

sudo dnf install flatpak -y

sudo dnf install wget curl git dnf5 iwlax2xx-firmware -y 

sudo dnf install intel-media-driver vulkan-loader -y

sudo dnf install eza fd-find -y

sudo dnf install @virtualization -y

sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

sudo dnf install lame\* --exclude=lame-devel

sudo dnf group upgrade --with-optional Multimedia --allowerasing

sudo dnf install dejavu-fonts-all google-noto-fonts-common intel-clear-sans-fonts liberation-fonts jetbrains-mono-fonts-all twitter-twemoji-fonts ibm-plex* rsms-inter-fonts abattis-cantarell-fonts -y  

sudo usermod -aG libvirt $(whoami)
sudo systemctl enable libvirtd --now

sudo dnf install darkman -y
systemctl enable --now darkman --user

mkdir -p ~/.local/bin
ln -s /usr/bin/alacritty ~/.local/bin/xterm

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub dev.alextren.Spot -y
flatpak install flathub com.jgraph.drawio.desktop -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.valvesoftware.Steam.Utility.gamescope -y
flatpak install org.freedesktop.Platform.VulkanLayer.gamescope -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub org.prismlauncher.PrismLauncher -y

