{ config, pkgs, lib, ... }:

{
  programs.nvf = {
    enable = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "storm";
        transparent = true;
      };
      
      options = {
        tabstop = 2;
        shiftwidth = 2;
      };

      viAlias = true;
      vimAlias = true;

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;
      filetree.nvimTree.enable = true;

      languages = {
        enableTreesitter = true;

        nix.enable = true;
      };
    };
  };
}
