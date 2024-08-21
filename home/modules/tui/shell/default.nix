{
  imports = [
    # TODO Import new stuff here
  ];

  home = {
    shellAliases = import ./aliases.nix;
  };

  programs = {
    bash = {
      enable = true;
    };

    starship = {
      enable = true;
    };
  };
}
