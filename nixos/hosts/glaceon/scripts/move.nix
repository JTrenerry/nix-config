{ pkgs }:

pkgs.writeShellScriptBin "move" ''
    class = ''${1^^}
    cd "''${HOME}/Documents/University/${class:0:4}/${class:4:4}" || exit
''
