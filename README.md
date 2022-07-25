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
emerge noto noto-emojie noto-cjk
```
