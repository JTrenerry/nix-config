{
  pkgs,
  inputs,
  lib,
  ...
}:
{
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  stylix = {
    enable = true;
    autoEnable = true;
    targets.hyprland.enable = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";
    image = ./hyprland/wallpaper.jpg;
    # cursor.name = "Breeze-gtk";
    # cursor.package = pkgs.breeze-gtk;
    # cursor = {
    #   package = pkgs.qogir-icon-theme;
    #   name = "Qogir";
    #   size = 24;
    # };
    # fonts = {
    #   monospace = {
    #     # package = (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; });
    #     # name = "FiraCode Nerd Font Mono Medium";
    #     package = pkgs.meslo-lgs-nf;
    #     name = "MesloLGS NF";
    #   };
    #   sansSerif = {
    #     package = pkgs.dejavu_fonts;
    #     name = "DejaVu Sans";
    #   };
    #   serif = {
    #     package = pkgs.dejavu_fonts;
    #     name = "DejaVu Serif";
    #   };
    # };
  };
}
