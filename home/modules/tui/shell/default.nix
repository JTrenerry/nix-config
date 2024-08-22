{
  imports = [
    # TODO Import new stuff here
  ];

  home = {
    shellAliases = import ./aliases.nix;
  };

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

    starship = {
      enable = true;
      settings = {
        battery = {
          full_symbol = "🔋";
          charging_symbol = "⚡️";
          discharging_symbol = "🔌";
          disabled = true;
        };

        git_branch = {
          disabled = true;
        };

        # Example time format
        time = {
          format = "🕒 [%H:%M:%S]";
        };
      };
    };
  };
}
