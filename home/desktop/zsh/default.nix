{ pkgs, ... }:

{
  programs.zsh = { 
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history = {
      save = 10000;
      share = true;
    };
  };
}