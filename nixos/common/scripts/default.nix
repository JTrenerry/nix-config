{ pkgs, ... }:


{
  environment.systemPackages = [
    (import ./switch.nix { inherit pkgs; })
  ];
}
