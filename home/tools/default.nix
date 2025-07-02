{ config, pkgs, ... }:

{
  imports = [
    ./git
    ./neovim
    ./firefox
  ];
}