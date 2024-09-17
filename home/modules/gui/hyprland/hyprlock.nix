{ pkgs, inputs, system, ... }:

let
  base          =  "#232136";
  surface       =  "#2a273f";
  overlay       =  "#393552";
  muted         =  "#6e6a86";
  subtle        =  "#908caa";
  text          =  "#e0def4";
  love          =  "#eb6f92";
  gold          =  "#f6c177";
  rose          =  "#ea9a97";
  pine          =  "#3e8fb0";
  foam          =  "#9ccfd8";
  iris          =  "#c4a7e7";
  highlightLow  =  "#2a283e";
  highlightMed  =  "#44415a";
  highlightHigh =  "#56526e";

  font = "JetBrainsMono Nerd Font";
in
{
  services.hypridle = {
    enable = true;
  };

  programs.hyprlock = {
    enable = true;
    sourceFirst = true;
    settings = {

      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

      background = [
        {
          monitor = "";
          path = "$HOME/.wallpaper";
          blur_passes = 0;
          color = base;
        }
      ];

      label = [

        # Time
        {
          monitor = "";
          text = "$TIME";
          color = iris;
          font_size = 90;
          font_family = pine;
          position = "-30, 0";
          halign = "right";
          valign = "top";
        }

        # Date
        {
          monitor = "";
          text = ''cmd[update:43200000] date +"%A, %d %B %Y"'';
          color = foam;
          font_size = 25;
          font_family = font;
          position = "-30, -150";
          halign = "right";
          valign = "top";
        }
      ];

      # User pfp
      image = [
        {
          monitor = "";
          path = "$HOME/.face";
          size = "300";
          rounding = -1;
          border_size = 0;
          border_color = surface;
          position = "0, 75";
          halign = "center";
          valign = "center";
        }
      ];

      # Input field
      input-field = [
        {
          monitor = "";
          size = "300, 60";
          dots_size = 0.2;
          dots_spacing = 0.2;
          dots_center = true;
          outer_color = surface;
          inner_color = iris;
          font_color = iris;
          fade_on_empty = false;
          placeholder_text = "Welcome Back!";
          hide_input = false;
          check_color = pine;
          fail_color = love;
          fail_text = ''<i>$FAIL <b>($ATTEMPTS)</b></i>'';
          capslock_color = gold;
          position = "0, -47";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
