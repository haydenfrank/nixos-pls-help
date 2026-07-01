{...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.displayManager.ly.enable = true;

  environment.variables = {
    HYPRCURSOR_THEME = "capitaine-cursors";
    HYPRCURSOR_SIZE = "32";
    XCURSOR_THEME = "capitaine-cursors";
    XCURSOR_SIZE = "32";
  };
}
