{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        settings.user.name  = "Tristan Reynders";
        settings.user.email = "tristan.reynders@icloud.com";
    };
}