{ pkgs }:

pkgs.writeShellScriptBin "move" ''
    CLASS=''${1^^}
    COURSE=''${CLASS:0:4}
    NUMBER=''${CLASS:4:4}
    cd "''${HOME}/Documents/University/''${COURSE}/''${NUMBER}" || exit
''
