{ pkgs, nix-path, ... }:


{
  environment.systemPackages = [
    (import ./switch.nix { inherit pkgs nix-path; })
  ];
}
