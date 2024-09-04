{
  config,
  pkgs,
  lib,
  ...
}:
{
  programs.nh = {
    enable = true;
  };

  environment.sessionVariables = {
    FLAKE = lib.mkForce "/home/jackson/Documents/Code/nix";
  };
}
