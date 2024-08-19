{ pkgs, lib, inputs, ... }:

{
  imports = [
    # TODO Import new tui modules here
    ./tmux.nix

    ./shell
    ./neovim
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
      #NOTE: This is user packages



      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })

      #TODO: Install new user packages here
    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };
}
