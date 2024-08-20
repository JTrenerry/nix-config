{
  programs = {
    git = {
      enable = true;

      userEmail = "105094182+JTrenerry@users.noreply.github.com";
      userName = "JTrenerry";

      extraConfig = {
        url."git@github.com:".insteadOf = "https://github.com/";
        init.defaultBranch = "main";
        core.autocrlf = "input";
        push.default = "current";
        core.editor = "nvim";
        github.user = "JTrenerry";
        github.userEmail = "105094182+JTrenerry@users.noreply.github.com";
        pull.rebase = false;
      };
    };

  lazygit = {
      enable = true;
      settings = {
        gui = {
          # showFileTree = false;

          theme = {
            activeBorderColor = ["blue" "bold"];
            selectedLineBgColor = ["white"];
          };
        };
        git = {
          # Improves performance
          # https://github.com/jesseduffield/lazygit/issues/2875#issuecomment-1665376437
          log.order = "default";

          fetchAll = false;
        };
      };
    };
  };

  home.shellAliases = {
    lg = "lazygit";

    gfu = "git fetch upstream";
    gfo = "git fetch origin";
  };
}
