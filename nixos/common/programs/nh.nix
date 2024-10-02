{
  config,
  pkgs,
  lib,
  nix-path,
  ...
}:
{
  programs.nh = {
    enable = true;
    # flake = /etc/nixos;
  };

  environment.sessionVariables = {
    FLAKE = lib.mkForce "${nix-path}";
  };
}
