{ pkgs, inputs, ... }:

{

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
  
}
