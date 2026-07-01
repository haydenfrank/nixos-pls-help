{
  pkgs,
  inputs,
  ...
}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    inputs.apple-fonts.packages.${pkgs.system}.sf-pro
  ];
}
