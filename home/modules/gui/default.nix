{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./kitty.nix
    ./cava.nix
    ./dunst.nix
    ./stylix.nix
    ./spotify.nix

    ./hyprland
    ./rofi
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
    blueman # bluetooth
    pavucontrol # audio
    networkmanagerapplet # network
    postman
    grimblast #screenshot
    hyprlock # lockscreen
    pinta

    # LOML
    rose-pine-cursor
    rose-pine-gtk-theme
    rose-pine-icon-theme

    # TEMP
    eclipses.eclipse-sdk
    zulu21
  ];
}
