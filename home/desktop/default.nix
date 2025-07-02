{ config, pkgs, ... }:

{
  imports = [
    ./hyprland
    ./hyprpaper
    ./waybar
  ];
}