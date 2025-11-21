{ config, pkgs, ... }:

{

  imports = [
    ./hardware.nix
    ../../modules/bootloader.nix
    ../../modules/common.nix
    ../../modules/users.nix
    ../../modules/desktop.nix
    ../../modules/nvidia.nix
  ];

}