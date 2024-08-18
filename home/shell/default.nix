{
  imports = [
    # TODO Import new stuff here
  ];

  home = {
    shellAliases = import ./aliases.nix;
  };

  programs = {
    bash = {
      enable = true;
      enableCompletion = true;


      # Custom prompt settings
      initExtra = ''
        PS1='[\u@\h \W]\$ '
        PROMPT_DIRTRIM=1
        PS1="\[\e[0;35m\]\u@\h \[\e[0;95m\]\w \[\e[0;32m\]\$ \[\e[0;m\]"
      '';
      
        # Some more bashrc shit goes here
    };
  };
}
