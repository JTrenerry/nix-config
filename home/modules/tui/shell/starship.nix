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


  # NOTE could not figure out how to make this a module but probs doable
  left-border = "[](fg:${overlay})";
  right-border = "[](fg:${overlay})";
in
{
  programs.starship = {
    enable = true;

    settings = {
      format = "$username $directory $git_branch$fill $time\n  [󱞪](fg:${iris}) ";

      fill = {
        style = "fg:${overlay}";
        symbol = " ";
      };

      username = {
        show_always = true;
        style_user = "bg:${overlay} fg:${iris}";
        style_root = "bg:${overlay} fg:${iris}";
        format = "${left-border}[ 󰧱 $user ]($style)${right-border}";
        disabled = false;
      };

      directory = {
        style = "bg:${overlay} fg:${pine}";
        format = "${left-border}[ $path ]($style)${right-border}";
        truncation_length = 3;
        truncation_symbol = "…/";
        substitutions = {
          "Documents" = "󰈙";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
        };
      };

      git_branch = {
        symbol = "";
        style = "bg:${overlay} fg:${foam}";
        format = ''${left-border}[ $symbol $branch ]($style)${right-border}'';
      };

      time = {
        disabled = false;
        time_format = "%I:%M%P";
        use_12hr = true;
        style = "bg:${overlay} fg:${rose}";
        format = ''${left-border}[ $time 󰴈 ]($style)${right-border}'';
      };
    };
  };
}
