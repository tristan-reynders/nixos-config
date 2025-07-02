{ pkgs, ... }:

{
  programs.zsh = { 
    enable = true
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history = {
      save = 10000;
      share = true;
    };
  };
}