{
  pkgs,
  lib,
  ...
}: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    kitty
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
    unzip
    nodejs
    gcc
    clang
    rustc
    cargo
    pkg-config
    stdenv.cc
    yq
    ripgrep
    alejandra
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "nvidia-persistenced"
    ];
}
