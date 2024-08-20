{pkgs, ...}: {
  programs = {
    nixvim = {
      extraPackages = with pkgs; [
      ];
      plugins = {
        lsp.servers.nil-ls.enable = true;
        lsp-format.lspServersToEnable = ["nil-ls"];
        nix.enable = true;
      };
    };
  };
}
