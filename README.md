# Arthur Ottoni's DotFiles -> Gentoo + i3-gaps

## Installation
* Packages:
```

                       Wm: i3-gaps, i3status
                    Audio: pulseaudio, pavucontrol
                 Terminal: Alacritty, zsh
                Wallpaper: Feh
              Run_Program: Dmenu
              Web_Browser: Brave
              Text_editor: Neovim
            Root_commands: Doas
         Gtk_theme_config: lxappearance
file-listing_command-line: exa (sys-apps/exa)
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

USE="X elogind pam alsa pulseaudio -gnome -kde -systemd -bluetooth"
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
GENTOO_MIRRORS="https://gentoo.c3sl.ufpr.br/ http://gentoo.c3sl.ufpr.br/ rsync://gentoo.c3sl.ufpr.br/gentoo/"
```
package.use
```
mpg > media-sound/mpg123 -pulseaudio
freetype > media-libs/freetype png


00cpu-flags >

*/* CPU_FLAGS_X86: aes avx avx2 f16c fma3 mmx mmxext pclmul popcnt rdrand sha sse sse2 sse3 sse4_1 sse4_2 sse4a ssse3
# required by media-libs/mesa-22.2.5::gentoo[-video_cards_r600,-video_cards_radeon,video_cards_radeonsi,-video_cards_r300]
# required by media-libs/libepoxy-1.5.10-r1::gentoo[egl]
# required by x11-base/xorg-server-21.1.6::gentoo[-minimal]
# required by x11-drivers/xf86-input-libinput-1.2.1::gentoo
# required by x11-base/xorg-drivers-21.1-r2::gentoo[input_devices_libinput]
# required by x11-base/xorg-drivers (argument)
>=x11-libs/libdrm-2.4.114 video_cards_radeon
```

extra 
```
 Option "Capabilities" "0x00000000" 
 ```
 
