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
    brightnessctl # Brightness should probs be in tui

    # IM / Editors
    vesktop # to do be moved for conf stuff

    xorg.xrandr

    # Office / Productivity / IDE
    jetbrains.idea-ultimate # Java IDE
    notesnook # Note taking app
    libreoffice-fresh # Text editor
    zoom-us # Work

    # Misc
    blueman # bluetooth
    pavucontrol # audio
    networkmanagerapplet # network
    postman # API docs
    grimblast #screenshot
    hyprlock # lockscreen
    pinta # Image Editing
    foot
  ];
}
