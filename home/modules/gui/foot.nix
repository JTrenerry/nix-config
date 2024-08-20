{
  programs = {
    foot = {
      enable = true;

      extraConfig = ''
      [terminal]
      scrollback = 10000
      scrollback_indicator = true
      bold_is_bright = false

      [colors]
      background = "#2e3440"
      foreground = "#d8dee9"
      cursor = "#d8dee9"
      selection_background = "#4c566a"
      selection_foreground = "#d8dee9"

      # Black
      color0 = "#3b4252"
      color8 = "#4c566a"

      # Red
      color1 = "#bf616a"
      color9 = "#bf616a"

      # Green
      color2 = "#a3be8c"
      color10 = "#a3be8c"

      # Yellow
      color3 = "#ebcb8b"
      color11 = "#ebcb8b"

      # Blue
      color4 = "#81a1c1"
      color12 = "#81a1c1"

      # Magenta
      color5 = "#b48ead"
      color13 = "#b48ead"

      # Cyan
      color6 = "#88c0d0"
      color14 = "#8fbcbb"

      # White
      color7 = "#e5e9f0"
      color15 = "#eceff4"
    '';
    };
  };
}
