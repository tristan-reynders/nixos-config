{ config, pkgs, nvf, ... }:

{
  imports = [
    ./desktop
    ./tools
  ];

  home.username = "tristan";
  home.homeDirectory = "/home/tristan";
  home.stateVersion = "25.05";
  
  programs.home-manager.enable = true; 

  home.packages = with pkgs; [
    adwaita-icon-theme
    greetd.tuigreet
    brightnessctl
    vscode
    nerd-fonts.jetbrains-mono

    # Wallpapers
    hyprpaper
  ];
}
