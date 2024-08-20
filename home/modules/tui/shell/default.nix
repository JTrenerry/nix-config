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
      enableCompletion = true;


      # Custom prompt settings
      initExtra = ''
        GREEN="\[\e[32m\]"
        BLUE="\[\e[34m\]"
        PURPLE="\[\e[35m\]"
        YELLOW="\[\e[33m\]"
        RED="\[\e[31m\]"
        RESET="\[\e[0m\]"

        # Function to get the current git branch
        function parse_git_branch() {
          git branch 2>/dev/null | grep '*' | sed 's/* //'
        }

        # Create a colorful prompt with git branch info and symbols
        export PS1="\[\e[35m\]\u \w \$(parse_git_branch)\ $ [\e[0m\] "
      '';
    };
  };
}
