{ config, pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./fonts.nix
    ./git.nix
    ./vscode.nix
    ./config-symlink.nix
  ];

  # Firefox
  programs.firefox.enable = true;

  # Packages to install
  home.packages = with pkgs; [
    bitwarden-desktop
  ];
  
  # Set state version
  home.stateVersion = "25.11";
}