{...}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/desktop.nix
    ./modules/users.nix
    ./modules/packages.nix
    ./modules/nvidia.nix
    ./modules/flatpak.nix
    ./modules/fonts.nix
  ];

  services.locate.enable = true;

  programs.firefox.enable = true;

  system.stateVersion = "26.05";
}
