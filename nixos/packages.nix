{ pkgs }:

# Packages that are needed for the entire system are to be installed here.

with pkgs; [
  vim # Just in case we need an editor, nixvim should be installed via flakes though
  wget
  git
  cloudflared
  docker-compose
  docker
  borgbackup
  firefox
  kitty # Incase we need a terminal
  # IDEs
  jetbrains.idea-ultimate
  
  #Util
  vesktop
  libreoffice-qt6-still
  zoom-us

  # Languages
  #Python
  python3
  python3Packages.pyelftools

  # Misc
  kittysay
  neofetch
  spotify
]

