{ config, pkgs, lib, ... }:

{

  # ── Basic system settings ───────────
  networking.networkmanager.enable = true;
  nixpkgs.config.allowUnfree = true;
  time.timeZone = "Europe/Brussels";
  i18n.defaultLocale = "en_US.UTF-8";
  # programs.dconf.enable = true; 

  # ── Flakes + nix-command ────────────
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # ── Minimal packages ────────────────
  environment.systemPackages = with pkgs; [
    wget curl git vim unzip htop brightnessctl
  ];

  system.stateVersion = "25.11";
  
}
