{ config, pkgs, ... }:

{
  imports = [
    ./git
    ./neovim
  ];
}