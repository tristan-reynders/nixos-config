{ config, pkgs, inputs, ... }:

{
  imports = [
    ./shell.nix
    ./fonts.nix
    ./git.nix
    ./vscode.nix
    ./spicetify.nix
    ./neovim.nix
    ./firefox.nix
    ./config-symlink.nix
  ];

  # Packages to install
  home.packages = with pkgs; [
    bitwarden-desktop
  ];
  
  # Set state version
  home.stateVersion = "25.11";
}
