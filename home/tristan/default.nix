{ config, pkgs, inputs, ... }:

{
  imports = [
    ./shell.nix
    ./fonts.nix
    ./git.nix
    ./vscode.nix
    ./spicetify.nix
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