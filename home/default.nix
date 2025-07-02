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
    kitty
    brightnessctl
    neovim
    vscode
    nerd-fonts.jetbrains-mono
  ];
}
