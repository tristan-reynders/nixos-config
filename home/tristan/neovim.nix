{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nvf.homeManagerModules.default

  ];

  programs.nvf = {
    enable = true;

    settings = {
      vim = {

        # THEME
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };

        # EDITOR FEATURES
        statusline.lualine.enable = true;
        autocomplete.nvim-cmp.enable = true;
        treesitter.enable = true;
        binds.cheatsheet.enable = true;
        telescope.enable = true;
        filetree.neo-tree.enable = true;

        # LANGUAGE SUPPORT
        lsp = {
          enable = true;
          servers = {
            nix.enable = true;
          };
        };

        keymaps = [
          {
            key = "<leader>km";
            mode = "n";
            silent = true;
            action = "<cmd>Telescope keymaps<CR>";
            desc = "Show keymaps [Telescope]";
          }
          {
            key = "<leader>nn";
            mode = "n";
            silent = true;
            action = "<cmd>Neotree toggle<CR>";
            desc = "Open file tree [NeoTree]";
          }
        ];
      };
    };
  };
}
