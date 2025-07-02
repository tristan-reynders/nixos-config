{ config, lib, pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      ipc = "on";
      splash = false; 

      preload = [ "~/nixos-config/home/wallpapers/night-clouds.jpg" ];
      wallpaper = [ "~/nixos-config/home/wallpapers/night-clouds.jpg" ];
    };
  };
}