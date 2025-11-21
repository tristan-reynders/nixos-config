{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        profiles.default.extensions = with pkgs.vscode-extensions; [
            jdinhlife.gruvbox
            pkief.material-icon-theme
            jnoortheen.nix-ide
        ];
    };
}
