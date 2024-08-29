{ pkgs, ...}:

{
  programs = {
    rofi = {
      enable = true;

      package = pkgs.rofi-wayland;

      theme = "/home/jackson/Documents/Code/nix/home/modules/gui/rofi-theme/squared-rose-pine-rasi";
    };
  };
}
