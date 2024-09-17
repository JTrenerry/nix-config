{ pkgs, ... }:


{
  environment.systemPackages = [
    (import ./move.nix { inherit pkgs; })
  ];
}
