{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    "$mainMod" = "SUPER";

    bind = [
      "$mainMod, Q, exec, kitty"
    ];
  };
}
