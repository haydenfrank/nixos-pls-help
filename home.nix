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
    };
  };
  home.file.".config/nvim".source = ./config/nvim;
  home.file.".config/hypr".source = ./config/hypr;
}
