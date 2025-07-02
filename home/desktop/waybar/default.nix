{ ... }: {

  programs.waybar = {
    enable = true;
    
    style = builtins.readFile ./css/style.css;

    settings = [{
      layer = "top";
      position = "top";
      mod = "dock";
      exclusive = true;
      passtrough = false;
      gtk-layer-shell = true;
      height = 0;

      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "hyprland/window" ];
      modules-right = [
        "network"
        "battery"
        "pulseaudio"
        "clock"
      ];

      "hyprland/workspaces" = {
        "format" = "{icon}";
        "persistent-workspaces" = {
            "*" = 5;
        };
      };

      "hyprland/window" = { 
        "format" = "<span  weight='bold' >{title}</span>";
        "max-length" = 30;
        "icon" = false;
      };

      "network" = {
        "tooltip" = true;
        "format-wifi" = "{icon} ";
        "format-icons" = ["󰤟" "󰤢" "󰤥"];
        "rotate" = 0;
        "format-ethernet" = "󰈀";
        "tooltip-format" = "Network: <b>{essid}</b>\nSignal strength: <b>{signaldBm}dBm ({signalStrength}%)</b>\nFrequency: <b>{frequency}MHz</b>\nInterface: <b>{ifname}</b>\nIP: <b>{ipaddr}/{cidr}</b>\nGateway: <b>{gwaddr}</b>\nNetmask: <b>{netmask}</b>";
        "format-linked" = "󰈀 {ifname} (No IP)";
        "format-disconnected" = "";
        "tooltip-format-disconnected" = "Disconnected";
        "interval" = 2;
      };
      
      "pulseaudio" = {
        "format" = "{icon}";
        "rotate" = 0;
        "format-muted" = "";
        "tooltip-format" = "{icon} {desc} | {volume}%";
        "scroll-step" = 5;
        "format-icons" = {
          "headphone" = "";
          "hands-free" = "";
          "headset" = "";
          "phone" = "";
          "portable" = "";
          "car" = "";
          "default" = ["" "" ""];
        };
      };

      "battery" = {
	      "bat" = "BAT0";
        "interval" = 10;
	      "states" = {
          "good" = 100;
          "moderate" = 50;
		      "warning" = 30;
		      "critical" = 15;
	      };
	      "format" = "{icon}";
        "tooltip-format" = "{capacity}% | {time}";
	      "format-icons" = ["" "" "" ""];
      };

      "clock" = {
        "format" = "{:%I:%M %p}";
        "rotate" = 0;
        "tooltip-format" = "{:%A, %B %d, %Y (%R)}";
      };
    }];
  };
}