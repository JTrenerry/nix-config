{
  description = "Multi Host (soon) Nix/Flake/Home-Manager Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    # 3200 overlay
    lwjgl-overlay = {
      url = "github:plapadoo/gdx-nixos-overlay"; # Replace with the actual username/repo
      flake = false;
    };
  };

  outputs = { self, nixpkgs, lwjgl-overlay, ... }@inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ...}: {
          nixpkgs.overlays = [
            (import (lwjgl-overlay + "/default.nix"))
          ];
        })
        ./nixos/hosts/glaceon/configuration.nix
        inputs.home-manager.nixosModules.default
      ];
    };
  };
}
