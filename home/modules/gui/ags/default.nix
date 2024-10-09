{ inputs, pkgs, hostname, ... }:
{
  # add the home manager module
  imports = [ inputs.ags.homeManagerModules.default ];

  home.packages = with pkgs; [
    # NOTE Add user packages that are for ags here
    gvfs
    bun

    #rose-pine-gtk-theme
    rose-pine-icon-theme
  ];
  programs.ags = {
    enable = true;

    # null or path, leave as null if you don't want hm to manage the config
    configDir = ../../../hosts/${hostname}/ags;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      gtksourceview
      webkitgtk
      accountsservice
    ];
  };
}
