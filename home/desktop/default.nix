{ config, pkgs, ... }:

{
  imports = [
    ./hyprland
    ./hyprpaper
    ./waybar
    ./ghostty
    ./rofi
  ];
}