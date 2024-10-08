_: {
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
          padding = {
              top = 2;
          };
      };

      display = {
          separator = " -> ";
      };

      modules = [
        "title"
        "separator"
          {
              type = "os";
              key = " OS";
              keyColor = "yellow";
              format = "{2}";
          }
          {
              type = "kernel";
              key = "├";
              keyColor = "yellow";
          }
          {
              type = "packages";
              key = "├󰏖";
              keyColor = "yellow";
          }
          {
              type = "shell";
              key = "└";
              keyColor = "yellow";
          }
          "break"

          {
              type = "wm";
              key = " DE/WM";
              keyColor = "blue";
          }
          {
              type = "lm";
              key = "├󰧨";
              keyColor = "blue";
          }
          {
              type = "wmtheme";
              key = "├󰉼";
              keyColor = "blue";
          }
          {
              type = "icons";
              key = "├󰀻";
              keyColor = "blue";
          }
          {
              type = "terminal";
              key = "├";
              keyColor = "blue";
          }
          {
              type = "wallpaper";
              key = "└󰸉";
              keyColor = "blue";
          }

          "break"
          {
              type = "host";
              key = "󰌢 PC";
              keyColor = "green";
          }
          {
              type = "cpu";
              key = "├󰻠";
              keyColor = "green";
          }
          {
              type = "gpu";
              key = "├󰍛";
              keyColor = "green";
          }
          {
              type = "disk";
              key = "├";
              keyColor = "green";
          }
          {
              type = "memory";
              key = "├󰑭";
              keyColor = "green";
          }
          {
              type = "display";
              key = "├󰍹";
              keyColor = "green";
          }
          {
              type = "uptime";
              key = "└󰅐";
              keyColor = "green";
          }

          "break"
          {
              type = "sound";
              key = " SOUND";
              keyColor = "cyan";
          }
          {
              type = "media";
              key = "└󰝚";
              keyColor = "cyan";
          }
      ];
    };
  };
}
