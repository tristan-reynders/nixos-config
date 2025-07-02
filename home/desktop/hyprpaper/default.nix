{ config, lib, pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;
    settings = {
      ipc = "on";
      splash = false; 

      preload = [ "~/nixos-config/home/wallpapers/nix.png" ];
      wallpaper = [ "eDP-1, ~/nixos-config/home/wallpapers/nix.png" ];
    };
  };
}