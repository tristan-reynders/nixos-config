{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.hostName = "zenbook";
  networking.networkmanager.enable = true;
  
  time.timeZone = "Europe/Brussels";
  
  nixpkgs.config.allowUnfree = true;

  services.xserver.enable = true;
  services.greetd.enable = true;
  services.greetd.settings = {
    default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --user-menu --asterisks --cmd 'Hyprland > /dev/null 2>&1'";
      user = "tristan";
    };
  };
  
  programs.zsh.enable = true;
  users.users.tristan = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "input"];
    shell = pkgs.zsh;
  };
  
  system.stateVersion = "25.05";
}
