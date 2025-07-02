{ config, pkgs, ... }:
let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    font = "JetBrains Mono Nerd Font Medium 11";

    theme = {
      configuration = {
        display-drun = "  ";
        display-window = "  ";
        display-run = "  ";
        drun-display-format = "{icon}  {name}";
        modi = "window,run,drun";
        show-icons = true;
        icon-theme = "Breeze-Dark";
      };

      "*" = {
        "bg0" = mkLiteral "#1a1b26";
        "bg1" = mkLiteral "#1f2335";
        "bg2" = mkLiteral "#24283b";
        "bg3" = mkLiteral "#414868";
        "fg0" = mkLiteral "#c0caf5";
        "fg1" = mkLiteral "#a9b1d6";
        "fg2" = mkLiteral "#737aa2";
        "red" = mkLiteral "#f7768e";
        "green" = mkLiteral "#9ece6a";
        "yellow" = mkLiteral "#e0af68";
        "blue" = mkLiteral "#7aa2f7";
        "magenta" = mkLiteral "#9a7ecc";
        "cyan" = mkLiteral "#4abaaf";
        "accent" = mkLiteral "@red";
        "urgent" = mkLiteral "@yellow";

        "background-color" = mkLiteral "transparent";
        "text-color" = mkLiteral "@fg0";
        "margin" = 0;
        "padding" = 0;
        "spacing" = 0;
      };

      "element-icon, element-text, scrollbar" = {
        cursor = mkLiteral "pointer";
      };

      window = {
        location = mkLiteral "northwest";
        width = mkLiteral "400px";
        x-offset = mkLiteral "10px";
        y-offset = mkLiteral "10px";
        background-color = mkLiteral "@bg1";
        border = mkLiteral "1px";
        border-color = mkLiteral "@bg3";
        border-radius = mkLiteral "5px";
      };

      inputbar = {
        spacing = mkLiteral "8px";
        padding = mkLiteral "4px 8px";
        background-color = mkLiteral "@bg0";
      };

      "icon-search, entry, element-icon, element-text" = {
        vertical-align = mkLiteral "0.5";
      };

      textbox = {
        padding = mkLiteral "4px 8px";
        background-color = mkLiteral "@bg2";
      };

      listview = {
        padding = mkLiteral "4px 0px";
        lines = 12;
        columns = 1;
        scrollbar = false;
        fixed-height = false;
        dynamic = true;
        background-color = mkLiteral "@bg1";
      };

      element = {
        padding = mkLiteral "4px 8px";
        spacing = mkLiteral "8px";
        background-color = mkLiteral "@bg1";
        text-color = mkLiteral "@fg0";
      };

      "element normal urgent" = {
        text-color = mkLiteral "@urgent";
      };

      "element normal active" = {
        text-color = mkLiteral "@accent";
      };

      "element alternate active" = {
        text-color = mkLiteral "@accent";
      };

      "element selected" = {
        text-color = mkLiteral "@bg1";
        background-color = mkLiteral "@fg0";
      };

      "element selected urgent" = {
        background-color = mkLiteral "@urgent";
      };

      element-icon = {
        size = mkLiteral "0.8em";
      };

      element-text = {
        text-color = mkLiteral "inherit";
      };

      scrollbar = {
        handle-width = mkLiteral "4px";
        handle-color = mkLiteral "@fg2";
        padding = mkLiteral "0 4px";
      };
    };
  };
}