{...}: {
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
}
