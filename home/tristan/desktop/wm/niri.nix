{ inputs, config, pkgs, ... }:

{

    imports = [
        inputs.niri.homeModules.niri
    ];

    programs.niri = {
        enable = true;
        package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri-unstable;

        settings = {

            environment = {
                QT_QPA_PLATFORM = "wayland";
                ELECTRON_OZONE_PLATFORM_HINT = "wayland";
                DISPLAY = ":0";
                _JAVA_AWT_WM_NONREPARENTING="1";
            };

            prefer-no-csd = true;
            hotkey-overlay.skip-at-startup = true;

            spawn-at-startup = [
                { command = ["noctalia-shell"]; }
            ];

            outputs = {

                # Desktop primary monitor
                "DP-1" = {
                    scale = 1.0;
                    focus-at-startup = true;
                    mode = {
                        width = 2560;
                        height = 1440;
                        refresh = 240.0;
                    };

                    position.x = 0;
                    position.y = 0;
                };

                # Desktop secondary monitor (Vertical)
                "HDMI-A-1" = {
                    scale = 1.0;
                    mode = {
                        width = 1920;
                        height = 1080;
                        refresh = 60.0;
                    };

                    position.x = 2560;
                    position.y = 0;
                    transform.rotation = 270;
                };
            };

            layout = {
                always-center-single-column = true;
                empty-workspace-above-first = true;
                default-column-width.proportion = 0.85;

                gaps = 10;
                shadow.enable = false;

                focus-ring.enable = false;
                border = {
                    enable = true;
                    width = 3;
                    active.color = "#83a598";
                    inactive.color = "#363636";
                };
            };

            window-rules = [
                {
                    geometry-corner-radius = let
                        r = 4.0;
                    in {
                        top-left = r;
                        top-right = r;
                        bottom-left = r;
                        bottom-right = r;
                    };
                    clip-to-geometry = true;
                }
            ];

	        binds = with config.lib.niri.actions;
            let
                mod = "Super";
            in {
                # Open applications
                "${mod}+T".action = spawn "alacritty";
                "${mod}+M".action = spawn "noctalia-shell" "ipc" "call" "launcher" "toggle";
                "${mod}+P".action = spawn "noctalia-shell" "ipc" "call" "sessionMenu" "toggle";
                "${mod}+Q".action = close-window;

                # Niri Overview
                "${mod}+O".action = toggle-overview;
                
                
                # Navigate columns
                "${mod}+Left".action = focus-column-left;
                "${mod}+H".action = focus-column-left;

                "${mod}+Right".action = focus-column-right;
                "${mod}+L".action = focus-column-right;

                # Navigate workspaces
                "${mod}+Down".action = focus-window-down;
                "${mod}+J".action = focus-workspace-down;
                "${mod}+Up".action = focus-window-up;
                "${mod}+K".action = focus-workspace-up;

                "${mod}+1".action = focus-workspace 1;
                "${mod}+2".action = focus-workspace 2;
                "${mod}+3".action = focus-workspace 3;
                "${mod}+4".action = focus-workspace 4;
                "${mod}+5".action = focus-workspace 5;
                "${mod}+6".action = focus-workspace 6;
                "${mod}+7".action = focus-workspace 7;
                "${mod}+8".action = focus-workspace 8;
                "${mod}+9".action = focus-workspace 9;

                # Move columns
                "${mod}+Ctrl+Left".action = move-column-left;
                "${mod}+Ctrl+H".action = move-column-left;
                "${mod}+Ctrl+Right".action = move-column-right;
                "${mod}+Ctrl+L".action = move-column-right;
                "${mod}+Ctrl+Down".action = move-column-to-workspace-down;
                "${mod}+Ctrl+J".action = move-column-to-workspace-down;
                "${mod}+Ctrl+Up".action = move-column-to-workspace-up;
                "${mod}+Ctrl+K".action = move-column-to-workspace-up;

                # Mouse binds
                "${mod}+WheelScrollDown".action = focus-workspace-down;
                "${mod}+WheelScrollUp".action = focus-workspace-up;
                "${mod}+Ctrl+WheelScrollDown".action = move-column-to-workspace-down;
                "${mod}+Ctrl+WheelScrollUp".action = move-column-to-workspace-up;

                "${mod}+Shift+WheelScrollDown".action = focus-column-right;
                "${mod}+Shift+WheelScrollUp".action = focus-column-left;
                "${mod}+Ctrl+Shift+WheelScrollDown".action = move-column-right;
                "${mod}+Ctrl+Shift+WheelScrollUp".action = move-column-left;

                # 2ND MONITOR BINDS
                "${mod}+Shift+Left".action = focus-monitor-left;
                "${mod}+Shift+Right".action = focus-monitor-right;
                "${mod}+Shift+H".action = focus-monitor-left;
                "${mod}+Shift+L".action = focus-monitor-right;

                "${mod}+Shift+Ctrl+Left".action = move-column-to-monitor-left;
                "${mod}+Shift+Ctrl+Right".action = move-column-to-monitor-right;
                "${mod}+Shift+Ctrl+H".action = move-column-to-monitor-left;
                "${mod}+Shift+Ctrl+L".action = move-column-to-monitor-right;

                # Resize columns
                "${mod}+R".action = switch-preset-column-width;
                "${mod}+F".action = maximize-column;
                "${mod}+Shift+F".action = fullscreen-window;
                "${mod}+Minus".action = set-column-width "-10%";
                "${mod}+Equal".action = set-column-width "+10%";
                "${mod}+Shift+Minus".action = set-window-height "-10%";
                "${mod}+Shift+Equal".action = set-window-height "+10%";

                # Function keys
                "XF86AudioRaiseVolume".action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+";
                "XF86AudioLowerVolume".action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-";
                "XF86AudioMute".action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
                "XF86AudioMicMute".action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
                "XF86MonBrightnessUp".action = spawn "brightnessctl" "--class=backlight" "set" "+10%";
                "XF86MonBrightnessDown".action = spawn "brightnessctl" "--class=backlight" "set" "10%-";

                # Misc
                "${mod}+Shift+P".action = power-off-monitors;
            };
        };
    };

}
