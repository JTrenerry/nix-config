{pkgs, ...}: {
  imports = [
    ./python.nix
    ./shell.nix
    ./typst.nix
    ./nix.nix
  ];

  programs.gh = {
    enable = true;

    settings = {
      git_protocol = "ssh";
    };
  };

  home.packages = with pkgs; [
    texlive.combined.scheme-full
  ];
}
