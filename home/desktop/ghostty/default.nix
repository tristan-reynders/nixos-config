{ pkgs, self, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "tokyonight-night.conf";

      font-family = "JetBrains Mono Nerd Font";
      font-size = 11;

      window-padding-x = 10;
      window-padding-y = 10;

      background-opacity = 0.7;
    };
  };

  home.file.".config/ghostty/themes/tokyonight-night.conf" = {
    text = ''
      palette = 0=#1a1b26
      palette = 1=#f7768e
      palette = 2=#9ece6a
      palette = 3=#e0af68
      palette = 4=#7aa2f7
      palette = 5=#bb9af7
      palette = 6=#7dcfff
      palette = 7=#c0caf5
      palette = 8=#414868
      palette = 9=#f7768e
      palette = 10=#9ece6a
      palette = 11=#e0af68
      palette = 12=#7aa2f7
      palette = 13=#bb9af7
      palette = 14=#7dcfff
      palette = 15=#a9b1d6
      background = #1a1b26
      foreground = #c0caf5
      cursor-color = #c0caf5
      cursor-text = #1a1b26
      selection-background = #33467c
      selection-foreground = #c0caf5
    '';
  };
}