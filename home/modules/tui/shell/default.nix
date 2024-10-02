{
  imports = [
    # TODO Import new stuff here
    ./starship.nix
    ./aliases.nix
  ];

  programs = {
    direnv = {
      enable = true;
      enableBashIntegration= true;
      nix-direnv.enable = true;
    };

    bash = {
      enable = true;

      bashrcExtra = ''eval "$(direnv hook bash)"'';
    };
  };
}
