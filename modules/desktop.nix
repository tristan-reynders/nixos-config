{ pkgs, inputs, ... }: {

  services.xserver.enable = true;
  
  services.displayManager.ly.enable = true;

  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    xwayland-satellite
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

}