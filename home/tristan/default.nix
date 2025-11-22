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
  programs.firefox = {
    enable = true;
    profiles.default = {
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        gruvbox-dark-theme
        bitwarden
        ublock-origin
      ];
      extraConfig = ''
        user_pref("extensions.activeThemeID", "{b8c4a94-e603-49ef-8e81-73d3c4cc04ff}");
      '';
    };
  };

  # Packages to install
  home.packages = with pkgs; [
    bitwarden-desktop
  ];
  
  # Set state version
  home.stateVersion = "25.11";
}