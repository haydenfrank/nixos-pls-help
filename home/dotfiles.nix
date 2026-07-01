{...}: {
  home.file = {
    ".config/nvim" = {
      source = ./config/nvim;
      recursive = true;
    };

    ".config/swaync" = {
      source = ./config/swaync;
      recursive = true;
    };

    ".config/hypr" = {
      source = ./config/hypr;
      recursive = true;
    };

    ".config/matugen" = {
      source = ./config/matugen;
      recursive = true;
    };

    ".config/kitty" = {
      source = ./config/kitty;
      recursive = true;
    };

    ".config/fish" = {
      source = ./config/fish;
      recursive = true;
    };

    ".config/waybar" = {
      source = ./config/waybar;
      recursive = true;
    };

    ".config/rofi" = {
      source = ./config/rofi;
      recursive = true;
    };

    ".config/starship.toml".source = ./config/starship.toml;
  };
}
