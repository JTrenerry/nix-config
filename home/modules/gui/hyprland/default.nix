{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./hyprland.nix
    ./hyprlock.nix
    ./waybar.nix
  ];

  home.packages = with pkgs; [
    # NOTE Add user packages that have a gui here
    swww
  ];
}
