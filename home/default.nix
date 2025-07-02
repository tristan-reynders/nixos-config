{ config, pkgs, ... }:

{
  imports = [
    ./hyprland
    ./waybar
  ];
  
  home.username = "tristan";
  home.homeDirectory = "/home/tristan";
  home.stateVersion = "25.05";
  
  programs.home-manager.enable = true;  

  home.packages = with pkgs; [
    greetd.tuigreet
    git
    firefox
    kitty
    brightnessctl
    neovim
    vscode
    nerd-fonts.jetbrains-mono
  ];
}
