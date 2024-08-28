{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./kitty.nix
    ./hyprland
    ./rofi.nix
  ];

  home.packages = with pkgs; [
    # NOTE Add user packages that have a gui here
    dunst # Setup script

    # Important
    firefox
    brightnessctl

    # IM
    vesktop

    # IDEs
    jetbrains.idea-ultimate
    xorg.xrandr

    # Office / Productivity
    libreoffice-fresh
    zoom-us

    # Misc
    spotify
    blueman
    pavucontrol
    postman
    grimblast #screenshot
  ];
}
