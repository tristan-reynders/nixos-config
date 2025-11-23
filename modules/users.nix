{ pkgs,... }:

{
    
    users.users.tristan = {
        isNormalUser = true;         
        group = "tristan"; 
        extraGroups = [ "wheel" "networkmanager" "video" "docker" ];
        shell = pkgs.zsh;
        ignoreShellProgramCheck = true;
    };
    users.groups.tristan = {};

}
