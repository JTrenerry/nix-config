{pkgs, ...}: {
  programs = {
    nixvim = {
      plugins = {
        lsp.servers.nil-ls.enable = true;
        lsp-format.lspServersToEnable = ["nil-ls"];
      };
    };
  };
}
