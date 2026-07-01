{
  config,
  lib,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nix";
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  users.users.hayden = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    packages = with pkgs; [
      tree
      prismlauncher
      rofi
      pywalfox-native
      swaynotificationcenter
    ];
  };

  services.locate.enable = true;
  services.displayManager.ly.enable = true;

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    foot
    kitty
    waybar
    git
    neovim
    gh
    fish
    starship
    matugen
    eza
    btop
    lshw
    mesa-demos
    psmisc
    capitaine-cursors
    libnotify
  ];

  services.flatpak = {
    enable = true;

    remotes = {
      flathub = "https://flathub.org/repo/flathub.flatpakrepo";
    };

    packages = [
      "flathub:app/com.discordapp.Discord/x86_64/stable"
      "flathub:app/org.mozilla.firefox/x86_64/stable"
      "flathub:app/com.spotify.Client/x86_64/stable"
    ];
    overrides = {
      "org.mozilla.firefox" = {
        SessionBusPolicy = {
          "org.freedesktop.Flatpak" = "talk";
          "org.freedesktop.portal.Flatpak" = "talk";
        };

        SystemBusPolicy = {
          "org.freedesktop.Flatpak" = "talk";
        };
      };
    };
  };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    inputs.apple-fonts.packages.${pkgs.system}.sf-pro
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "nvidia-x11"
    "nvidia-settings"
    "nvidia-persistenced"
  ];

  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = ["modesetting" "nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime = {
      sync.enable = true;

      nvidiaBusId = "PCI:1:0:0";
      intelBusId = "PCI:0:2:0";
    };
  };

  environment.variables = {
    HYPRCURSOR_THEME = "capitaine-cursors";
    HYPRCURSOR_SIZE = "32";
    XCURSOR_THEME = "capitaine-cursors";
    XCURSOR_SIZE = "32";
  };

  system.stateVersion = "26.05";
}
