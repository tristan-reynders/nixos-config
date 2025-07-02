{ config, pkgs, ... }:

{
  programs.nvf = {
    enable = true;

    settings = {
      vim.theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
        transparent = true;
      };

      vim.viAlias = false;
      vim.vimAlias = true;

      vim.lsp = {
        enable = true;
      };
    };
  };
}
