{ config, pkgs, ... }:

{
  programs.nvf = {
    enable = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
        transparent = true;
      };
      

      viAlias = false;
      vimAlias = true;

      lsp = {
        enable = true;
      };
    };
  };
}
