{pkgs, ...}: {
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
}
