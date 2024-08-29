{ config, pkgs, inputs, ... }:

# Packages that are needed for the entire system are to be installed here.

{
  environment.systemPackages = with pkgs; [
    vim # Just in case we need an editor, nixvim should be installed via flakes though
    # DO NOT ADD SHIT HERE
    mesa
    libglvnd
    vulkan-tools  # For Vulkan support, if needed
  ];
}
