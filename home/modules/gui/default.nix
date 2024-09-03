{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./kitty.nix
    ./hyprland
    ./rofi.nix
    ./cava.nix
    ./dunst.nix
    #    ./stylix.nix
  ];

  home.packages = with pkgs; [
    # NOTE Add user packages that have a gui here

    # Important
    firefox
    brightnessctl

    # IM
    vesktop # to do be moved for conf stuff

    # IDEs
    jetbrains.idea-ultimate
    xorg.xrandr

    # Office / Productivity
    libreoffice-fresh
    zoom-us

    # Misc
    spotify
    blueman # bluetooth
    pavucontrol # audio
    networkmanagerapplet # network
    postman
    grimblast #screenshot
    hyprlock # lockscreen
    pinta

  ];
}
