{ pkgs, ... }:

{
    programs.alacritty = {
        enable = true;
        settings.window.decorations = "none";
        settings.window.padding = { 
          x = 12; 
          y = 0; 
        };
    };

    stylix.targets.alacritty.enable = true;
}