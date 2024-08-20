{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Q, exec, kitty"
      ];
    };
  };
}
