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
        pull.rebase = false;
      };
    };
  };
}
