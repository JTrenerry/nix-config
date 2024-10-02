{ pkgs, username, ... }:

{
  services.jellyfin = {
    enable = true;
    user = "${username}";
  };

  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg  # Might not need this
  ];
}
