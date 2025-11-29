{ inputs, osConfig, ... }:
let
  hostname = osConfig.networking.hostName;
in
{

    imports = [ 
        inputs.noctalia.homeModules.default
    ];

    programs.noctalia-shell = {
      enable = true;
      settings = {
        bar = {
          position = "top";
          backgroundOpacity = 0;
          capsuleOpacity = 0;
          outerCorners = false;

          widgets = {

            left = [
              {
                id = "ControlCenter";
                useDistroLogo = true;
                colorizeDistroLogo = true;
              }
              {
                id = "Workspace";
              }
              {
                id = "MediaMini";
                showArtistFirst = true;
                maxWidth = 300;
                scrollingMode = "Hover";
              }
            ];

            center = [
              {
                id = "ActiveWindow";
                colorizeIcons = true;
                maxWidth = 300;
                scrollingMode = "Hover";
              }
            ];

            right = [
              {
                id = "Tray";
              }
              {
                id = "Volume";
              }
                            {
                id = "Bluetooth";
              } 
              ( 
                if hostname == "zenbook" then [
                  {
                    id = "Brightness";
                  }
                  {
                    id = "Battery";
                  }
                ] 
                else []
              )
              {
                id = "WiFi";
              }
              {
                id = "Clock";
                formatHorizontal = "HH:mm - dddd, MMMM dd";
              }
              {
                id = "NotificationHistory";
              }
            ];

          };

        };

        appLauncher = {
          terminalCommand = "alacritty -e";
        };

        ui = {
          fontFixed = "JetBrainsMono Nerd Font";
        };

        location = {
          name = "Zonhoven";
          firstDayOfWeek = 1;
        };

        wallpaper = {
          directory = "/home/tristan/nixos-config/wallpapers";
          defaultWallpaper = "/home/tristan/nixos-config/wallpapers/nixos-contrast.png";
        };

        dock = {
          enabled = false;
        };

        colorSchemes = {
          predefinedScheme = "Gruvbox";
        };

      };

    };

}