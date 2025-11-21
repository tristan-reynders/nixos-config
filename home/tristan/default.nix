{ config, pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./fonts.nix
    ./git.nix
    ./config-symlink.nix
  ];

  # Firefox
  programs.firefox.enable = true;

  # Packages to install
  home.packages = with pkgs; [
    vscode
    bitwarden-desktop
  ];
  
  # Set state version
  home.stateVersion = "25.11";
}