{ config, pkgs, inputs, ... }:

{
  imports = [
    ./desktop/fonts
    ./desktop/wm/niri.nix
    ./desktop/bar/noctalia.nix

    ./terminal/shell/zsh.nix
    ./terminal/emulators/alacritty.nix

    ./editor/vscode.nix

    ./utilities/git.nix
    ./utilities/direnv.nix

    ./browsers/firefox.nix
  ];

  # Packages to install
  home.packages = with pkgs; [
    bitwarden-desktop
    obsidian
    nautilus
  ];

  # Set state version
  home.stateVersion = "25.11";
}
