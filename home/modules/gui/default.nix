{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./kitty.nix
    ./hyprland.nix
    ./rofi.nix
  ];

  home.packages = with pkgs; [
    # NOTE Add user packages that have a gui here
    dunst # Setup script

    # Important
    firefox

    # IM
    vesktop

    # IDEs
    jetbrains.idea-ultimate

    # Office / Productivity
    libreoffice-fresh
    zoom-us

    # Misc
    spotify
    blueman
    pavucontrol
  ];

  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    gtk4.extraConfig = {
      settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
