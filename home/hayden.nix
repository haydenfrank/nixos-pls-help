{inputs, ...}: {
  home.username = "hayden";
  home.homeDirectory = "/home/hayden";
  home.stateVersion = "26.05";

  imports = [
    ./dotfiles.nix
    ./cursor.nix
    ./programs.nix
    inputs.flatpaks.homeModules.default
  ];
}
