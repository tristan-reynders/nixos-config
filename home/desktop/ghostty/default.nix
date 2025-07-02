{ pkgs, self, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "JetBrains Mono Nerd Font";
      font-size = 11;
      window-padding-x = 10;
      window-padding-y = 0;
    };
  };
}