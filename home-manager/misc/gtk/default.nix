{
  pkgs,
  ...
}: {
  # GTK theme configuration
  gtk = {
    enable = true;
    iconTheme = {
      name = "Tela-circle-dark";
      package = pkgs.tela-circle-icon-theme;
    };
    cursorTheme = {
      name = "Yaru";
      package = pkgs.yaru-theme;
      size = 24;
    };
    font = {
      name = "Fira Code";
      size = 11;
    };
  };

  # Enable catppuccin theming for GTK apps.
  #catppuccin = {
  # gtk = {
  #     enable = true;
  #   gnomeShellTheme = true;
  # };
  # };
}
