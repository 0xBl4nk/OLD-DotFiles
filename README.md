# Arthur Ottoni's DotFiles -> Gentoo + i3-gaps

## Installation
* Packages:
```
           Wm: i3-gaps, i3status
        Audio: pulseaudio, pavucontrol
     Terminal: Alacritty
    Wallpaper: Feh
  Run_Program: Dmenu
  Web_Browser: Firefox
  Text_editor: Neovim
Root_commands: Doas
```

* Install Dotfiles: { No... I won't make an auto installer :) }
```sh
git clone https://github.com/ArthurHydr/DotFiles.git
```

* Install fonts:
```
cp -r fonts ~/.local/share/
fc-cache -f -v
```

Change wallpaper
```
mkdir ~/Pictures
cp wallpaper.jpg ~/Pictures
```

* Install packer for nvim
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

* Fix Emoji Discord
```
echo "media-libs/freetype png" > /etc/portage/package.use/freetype
emerge noto noto-emoji noto-cjk
```

flags
```
COMMON_FLAGS="-march=znver2 -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"

MAKEOPTS="-j12"

USE="X elogind pam alsa pulseaudio -gtk -gnome -kde -systemd"
ACCEPT_LICENSE="*"

VIDEO_CARDS="amdgpu radeonsi virgl"
QEMU_SOFTMMU_TARGETS="arm x86_64 sparc"

GRUB_PLATFORMS="efi-64"

QEMU_USER_TARGETS="x86_64"

EMERGE_DEFAULT_OPTS="--ask --verbose"

# NOTE: This stage was built with the bindist Use flag enabled
PORTDIR="/var/db/repos/gentoo"
DISTDIR="/var/cache/distfiles"
PKGDIR="/var/cache/binpkgs"

# This sets the language of build output to English.
# Please keep this setting intact when reporting bugs.
LC_MESSAGES=C
```
extra 
```
 Option "Capabilities" "0x00000000" 
 ```
 
