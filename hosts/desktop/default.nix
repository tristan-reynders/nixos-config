{ config, pkgs, inputs, ... }:

{

  imports = [
    ./hardware.nix
    ../../modules/bootloader.nix
    ../../modules/common.nix
    ../../modules/users.nix
    ../../modules/desktop.nix
    ../../modules/nvidia.nix
    ../../modules/docker.nix
    ../../modules/stylix.nix

    inputs.stylix.nixosModules.stylix
  ];
  
}
