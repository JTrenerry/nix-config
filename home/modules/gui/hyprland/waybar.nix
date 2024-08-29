{ pkgs, lib, inputs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [

        ];

        modules-right = [
          "blueman"
          "pulseaudio"
          "battery"
          "tray"
          "clock"
        ];

        "hyprland/workspaces" = {
	      format = "{icon}";
	      on-click = "activate";
	      all-outputs = true;
          sort-by-number = true;
        };

        "pulseaudio" = {
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = " {volume}%";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          on-click = "sleep 0.1 && pavucontrol";
        };

      };
    };

    style = ''
      /*
      * Variant = Rosé Pine Moon
      * Maintainer = DankChoir
      */

      @define-color base            #232136;
      @define-color surface         #2a273f;
      @define-color overlay         #393552;

      @define-color muted           #6e6a86;
      @define-color subtle          #908caa;
      @define-color text            #e0def4;

      @define-color love            #eb6f92;
      @define-color gold            #f6c177;
      @define-color rose            #ea9a97;
      @define-color pine            #3e8fb0;
      @define-color foam            #9ccfd8;
      @define-color iris            #c4a7e7;

      @define-color highlightLow    #2a283e;
      @define-color highlightMed    #44415a;
      @define-color highlightHigh   #56526e;

      /* NOTE: The background */
      window#waybar {
        background: @base;
      }

      /* NOTE: Workspaces */
      #workspaces {
        color: @iris;
        background: @surface;
      }

      #workspaces button {
        font-weight: bold;
        color: @overlay;
      }

      #workspaces button.active {
        font-weight: bold;
        color: @iris;
      }

      #workspaces button:hover {
        font-weight: bold;
        background: @iris;
        color: @surface;
      }

      #clock {
        font-weight: bold;
        color: @iris;
        background: @surface;
        margin: 0px;
        padding: 0px 15px 0px 30px;
        border-radius: 0px 0px 0px 40px;
      }

      #battery, #tray, #pulseaudio {
        font-weight: bold;
        background: @surface;
        color: @iris;
        margin: 4px 0px;
        margin-right: 7px;
        border-radius: 10px 24px 10px 24px;
        padding: 0px 18px;
      }
      '';
  };
}
