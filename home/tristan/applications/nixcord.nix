{ inputs, ... }:

{

    imports = [ 
        inputs.nixcord.homeModules.nixcord
    ];

    programs.nixcord = {
        enable = true;

        config.plugins = {
            dontRoundMyTimestamps.enable = true;
            readAllNotificationsButton.enable = true;
            betterFolders = {
                enable = true;
                closeAllFolders = true;
                closeAllHomeButton = true;
                closeOthers = true;
                forceOpen = true;
            };
        };

    };

}