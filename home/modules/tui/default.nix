{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./git.nix
    ./tmux.nix
    ./fastfetch.nix

    ./shell
    ./neovim
    ./dev
  ];

  programs = {
    # Let Home Manager install and manage itself
    home-manager.enable = true;
  };

  fonts.fontconfig.enable = true;

  home = {
    stateVersion = "24.05"; # Do not touch

    username = lib.mkDefault "jackson";
    homeDirectory = lib.mkDefault "/home/jackson";

    packages = with pkgs; [
      # NOTE This is user packages
      acpi

      # Fonts
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })

      # Containers
      docker-compose

      # SSH
      cloudflared

      # Misc
      kittysay
      uwuify
      lolcat
      imagemagick
      tree
      unzip
      zip
      htop

      # Connections
      bluetuith
      bluez
    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };
}
