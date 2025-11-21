{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
      }
    ];  

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      nrs-desktop = "sudo nixos-rebuild switch --flake ~/nixos-config#desktop";
    };
    history.size = 10000;
  };
  programs.starship.enable = true;
}