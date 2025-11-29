{ pkgs, inputs, ... }: {

  services.xserver.enable = true;
  
  services.displayManager.gdm.enable = true;

  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    xwayland-satellite
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

}