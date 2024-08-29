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
        ];

        modules-center = [
          "hyprland/workspaces"
        ];

        modules-right = [
          "bluetooth"
          "pulseaudio"
          "network"
          "battery"
          "clock"
        ];

        "hyprland/workspaces" = {
	      format = "{icon}";
	      on-click = "activate";
	      all-outputs = true;
          sort-by-number = true;
        };

        "tray" = {
          spacing =12;
        };

        "clock" = {
          format = ''{:L%I:%M %p}'';
          tooltip = true;
          tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-plugged = "󱘖 {capacity}%";
          format-icons = [
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];
          on-click = "";
          tooltip = false;
        };

        "network" = {
          format-icons = [
            "󰤯 "
            "󰤟 "
            "󰤢 "
            "󰤥 "
            "󰤨 "
          ];
          format-ethernet = " {bandwidthDownOctets}"; /* TODO: this shit wack */
          format-wifi = "{icon} {signalStrength}%";
          format-disconnected = "󰤮 ";
          tooltip = false;
          on-click = "sleep 0.1 && nm-connection-editor";
        };

        "pulseaudio" = {
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{volume}% {icon}  {format_source}";
          format-bluetooth-muted = " {icon}  {format_source}";
          format-muted = " {format_source}";
          format-source = " {volume}%";
          format-source-muted = " ";
          format-icons = {
            headphone = " ";
            /* TODO: get a better emojis or nerdfont? */
            hands-free = " ";
            headset = " ";
            phone = " ";
            portable = " ";
            car = " ";
            default = [
              " "
              " "
              " "
            ];
          };
          on-click = "sleep 0.1 && pavucontrol";
        };

        # TODO: make it look pretty
        "bluetooth" = {
          on-click = "sleep 0.1 && blueman-manager";
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
        background: @highlightLow;
        color: @iris;
        border-color: @foam;
      }

      #clock {
        font-weight: bold;
        color: @iris;
        background: @surface;
        margin: 0px;
        padding: 0px 15px 0px 30px;
        border-radius: 0px 0px 0px 40px;
      }

      #battery, #tray, #pulseaudio,
      #bluetooth, #network {
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
