<h1 style=text-align:center> Arthur Ottoni -> Gentoo DotFiles</h1>

* Packages:
```
                       Wm: i3-gaps, i3status
                       Sh: Fish
                    Audio: Pulseaudio, Pavucontrol
                 Terminal: Alacritty
                Wallpaper: Feh
               Compositor: Picom 
              Run_Program: Dmenu
              Web_Browser: Brave
              Text_editor: Neovim
             File-listing: Exa
            Root_commands: Doas 
```

* Install fonts:
```bash
cp -r fonts ~/.local/share/
fc-cache -f -v
```

* Set wallpaper
```bash
mkdir ~/Pictures
cp wallpaper.jpg ~/Pictures
cp .fehbg ~/

```

* Install packer for nvim
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

* Fix Discord-Emoji
```bash
echo "media-libs/freetype png" > /etc/portage/package.use/freetype
emerge noto noto-emoji noto-cjk
```

