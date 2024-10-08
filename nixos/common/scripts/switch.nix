{ pkgs, nix-path }:
let
  nh = "${pkgs.nh}/bin/nh";
in
pkgs.writeScriptBin "switch" ''
  #!${pkgs.nushell}/bin/nu --stdin

  def main [
    --os (-o) # Optional parameter to switch only os configuration
    --hm (-h) # Optional parameter to switch only home configuration
  ] {
    if not ("${nix-path}/flake.nix" | path exists) {
      error make { msg: "No nix-config found in ${nix-path}" };
    }
    $env.NIXPKGS_ALLOW_INSECURE = "1";

    mut os = $os;
    mut hm = $hm;

    if $os == $hm { # Both or neither were  specified
      print "Switching OS then HM";
      $os = true;
      $hm = true;
    };
    if $os {
      print "Switching OS";
      ${nh} os switch ${nix-path} --ask;
    };
    if $hm {
      print "Switching HM";
      ${nh} home switch ${nix-path} --ask -- --impure;
    };
  }
''
