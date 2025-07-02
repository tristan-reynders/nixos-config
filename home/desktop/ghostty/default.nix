{ pkgs, self, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppucin-mocha";
      font-family = "JetbrainsMono Nerd Font";
      font-size = 14;
      window-padding-x = 10;
      window-padding-y = 10;
    };
  };
}