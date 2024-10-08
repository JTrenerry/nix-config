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
    polarity = "dark";
    targets = {
      hyprland.enable = false;
      firefox.enable = false;
      rofi.enable = false;
      dunst.enable = false;
      kitty.enable = false;
      nixvim.enable = false;
      waybar.enable = false;
      # nixos-icons.enable = false;
      gtk.enable = false;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";
    image = ~/.wallpaper;

    cursor = {
      package = pkgs.rose-pine-cursor;
      #name = "RosePine";
      #package = pkgs.qogir-icon-theme;
      #name = "Qogir";
      size = 50;
    };
  };
}
