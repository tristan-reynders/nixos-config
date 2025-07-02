{ config, pkgs, ... }:

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
    greetd.tuigreet
    firefox
    brightnessctl
    vscode
    nerd-fonts.jetbrains-mono

    # Wallpapers
    hyprpaper
  ];
}
