{ pkgs, config, inputs, ... }:

{

  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix.enable = true;
  stylix.autoEnable = false;
  stylix.enableReleaseChecks = false;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark.yaml";
  stylix.fonts = {

    monospace = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono NF";
    };

    sizes = {
      applications = 12;
      desktop = 12;
      popups = 12;
      terminal = 14;
    };

  };

  stylix.cursor = {
    package = pkgs.capitaine-cursors-themed;
    name = "Capitaine Cursors (Gruvbox)";
    size = 32;
  };

  stylix.iconTheme = {
    enable = true;
    package = pkgs.gruvbox-plus-icons;
    light = "Gruvbox-Plus-Light";
    dark = "Gruvbox-Plus-Dark";
  };

}