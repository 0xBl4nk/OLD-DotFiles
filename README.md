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

* Install Dotfiles: { No... I won't make an auto installer :) }
```sh
git clone https://github.com/ArthurHydr/DotFiles.git
```

* Install fonts:
```bash
cp -r fonts ~/.local/share/
fc-cache -f -v
```

Change wallpaper
```bash
mkdir ~/Pictures
cp wallpaper.jpg ~/Pictures
```

* Install packer for nvim
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

* Fix Emoji Discord
```bash
echo "media-libs/freetype png" > /etc/portage/package.use/freetype
emerge noto noto-emoji noto-cjk
```

* Fish Commands
```bash
set -U fish_greeting

alias --save ls=exa
alias --save l="ls -la"
alias --save fetch="clear && neofetch"
```
