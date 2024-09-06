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

    base16.url = "github:SenchoPens/base16.nix";
    stylix.url = "github:danth/stylix";

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # 3200 overlay
    lwjgl-overlay = {
      url = "github:JTrenerry/gdx-nixos-overlay"; # Replace with the actual username/repo
      flake = false;
    };
  };

  outputs = { self, nixpkgs, lwjgl-overlay, ... }@inputs: let
    inherit (self) outputs;
    stateVersion = "24.05";
    lib = import ./lib {
      inherit
        inputs
        stateVersion
        outputs
        nixpkgs
        ;
    };
  in {
    nixosConfigurations = {
      "glaceon" = lib.mkHost {
        hostname = "glaceon";
        username = "jackson";
        system = "x86_64-linux";
        desktop = "mimi";
      };

      default = nixpkgs.lib.nixosSystem {
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

    homeConfigurations = {
      "jackson@glaceon" = lib.mkHome {
        hostname = "glaceon";
        username = "jackson";
        system = "x86_64-linux";
        shell = "mimi";
        desktop = "mimi";
      };
    };


    devShells = lib.forAllSystems (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      import ./shell.nix { inherit pkgs; }
    );
  };
}
