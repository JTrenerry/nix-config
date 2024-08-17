{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    python3
    python3Packages.pyelftools
    python3Packages.capstone
  ];

  shellHook = ''
    echo "weclome"
  '';

  COLOR = "blue";
}
