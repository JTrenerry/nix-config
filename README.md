Nix OS config for multiple hosts (none are defined but will be when I move some computers over)


```jackson@glaceon``` is a school laptop that uses Hyprland and rose-pine-moon theme.

The hyprland config has various keybinds that can be seen in the hyprland folder's md.
It uses the rose-pine-moon theme and the wallpaper, face image, and rofi background comes from
```~/.wallpaper.jpg```, ```~/.face.png``` and ```~/.rofi.jpg```.


Basic folder structure:
```
.
├── home
│   ├── hosts
│   │   └── glaceon
│   └── modules
│       ├── gui
│       │   ├── hyprland
│       │   └── rofi
│       └── tui
│           ├── dev
│           ├── neovim
│           │   └── plugins
│           └── shell
├── lib
└── nixos
    └── hosts
        └── glaceon
            ├── gdx
            └── scripts
```

The home directory is the basis for all home-manager modules,
it then splits into hosts, i.e. the computer and modules (gui and tui for now)
these have anything I would need if the computer only is a terminal based system or
if I want a gui.

The nixos directory is the basis for all nixos modules,
it has the hosts dir which deals with each computer that will use it, for now it is just
a school laptop called glaceon.
