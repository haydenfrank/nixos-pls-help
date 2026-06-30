{
  config,
  pkgs,
  ...
}: {
  home.username = "hayden";
  home.homeDirectory = "/home/hayden";
  home.stateVersion = "26.05";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use hyprland btw";
      nrs = "sudo nixos-rebuild switch --flake ~/dots#nix";
    };
  };
  home.file.".config/nvim" = {
    source = ./config/nvim;
    recursive = true;
  };
  home.file.".config/hypr" = {
    source = ./config/hypr;
    recursive = true;
  };
  home.file.".config/matugen".source = ./config/matugen;
  home.file.".config/kitty" = {
    source = ./config/kitty;
    recursive = true;
  };
  home.file.".config/fish" = {
    source = ./config/fish;
    recursive = true;
  };
  home.file.".config/waybar" = {
    source = ./config/waybar;
    recursive = true;
  };
  home.file.".config/starship.toml".source = ./config/starship.toml;
}
