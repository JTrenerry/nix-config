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
          disabled = false;
        };

        git_branch = {
          symbol = "🌱 "; # You can customize the symbol here
          disabled = false;
        };

        # Add other configurations as needed
        prompt_order = [
          "username"
          "hostname"
          "directory"
          "git_branch"
          "battery"
          "jobs"
          "time"
        ];

        # Example time format
        time = {
          format = "🕒 [%H:%M:%S]";
        };
      };
    };
  };
}
