# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, inputs, ... }:

{
  imports =
    [
      ./packages.nix  # System wide packages
      ./scripts # This computer specific scripts i.e. move

      inputs.hyprland.nixosModules.default

      ./hardware-configuration.nix
    ];

  # NETWORKING
  networking = {
    hostName = "glaceon";

    # Enable networking
    networkmanager.enable = true;

    # wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  };

  # SERVICES
  services = {
    # XSERVER
    xserver= {
      enable = true;
      layout = "us";
      variant = "";
      # Enable touchpad support (enabled default in most desktopManager).
      # libinput.enable = true;
    };

    # PRINTING
    printing.enable = true;

    # GREETD / GREETER
    greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "${inputs.hyprland.packages.x86_64-linux.default}/bin/Hyprland";
          user = "jackson";
        };
        default_session = initial_session;
      };
    };

    # PIPEWIRE
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;

      wireplumber = {
        enable = true;
        configPackages = [];
      };
    };
  };

  # BOOTLOADER
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # NIX
  nix = {
    # Enable flakes
    settings.experimental-features = [ "nix-command" "flakes" ];
    # Remove old snapshots
    gc = { automatic = true; dates = "weekly"; options = "--delete-older-than 14d"; };

    # Looks at my github repo for my nix-templates
    registry.devtemplates = {
      to = {
        owner = "JTrenerry";
        repo = "nix-templates";
        type = "github";
      };
      from = {
        id = "devtemplates";
        type = "indirect";
      };
    };
  };

  # TIME
  time.timeZone = "Australia/Brisbane";

  # I18N - may be able to move to a common file
  i18n = {
    defaultLocale = "en_GB.UTF-8";

    extraLocaleSettings = {
      LC_ADDRESS = "en_AU.UTF-8";
      LC_IDENTIFICATION = "en_AU.UTF-8";
      LC_MEASUREMENT = "en_AU.UTF-8";
      LC_MONETARY = "en_AU.UTF-8";
      LC_NAME = "en_AU.UTF-8";
      LC_NUMERIC = "en_AU.UTF-8";
      LC_PAPER = "en_AU.UTF-8";
      LC_TELEPHONE = "en_AU.UTF-8";
      LC_TIME = "en_AU.UTF-8";
    };
  };

  # HARDWARE
  hardware = {
    # BLUETOOTH
    bluetooth = {
      enable = true; # enables support for Bluetooth
      powerOnBoot = true; # powers up the default Bluetooth controller on boot
    };

    pulseaudio.enable = false; # Audio
  };

  # SECURITY
  security = {
    rtkit.enable = true;
  };

  # USERS
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.jackson = {
      isNormalUser = true;
      description = "jackson";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
    };
  };

  # ViRTUALISATION
  virtualisation.docker = {
    enable = true;
  };

  # PROGRAMS
  programs = {
    # FIREFOX
    firefox.enable = true;

    # HYPRLAND
    hyprland.enable = true;
    hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;
  };

  # NIXPKGS
  nixpkgs.config.allowUnfree = true; # Allows unfree packages

  # ENVIRONMENT
  environment = {
    variables = {
      XDG_CURRENT_DESKTOP = "Hyprland";
      USE_WAYLAND_GRIM = "1";
      XDG_SESSION_TYPE = "wayland";
      XDG_SESSION_DESKTOP = "Hyprland";
      _JAVA_AWT_WM_NONREPARENTING = 1;
      MOZ_ENABLE_WAYLAND = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
    };

    sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };
  };

  system.stateVersion = "24.05"; # No touch!
}
