{
  pkgs,
  inputs,
  ...
}:
{
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  stylix = {
    enable = true;
    autoEnable = true;
    targets.hyprland.enable = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";
    image = ../gui/hyprland/wallpaper.jpg;
  };
}
