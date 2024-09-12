{ pkgs, ... }:


{
  environment.systemPackages = [
    (import ./move.nix { inherit pkgs; })
    (import ./switch.nix { inherit pkgs; })
  ];
}
