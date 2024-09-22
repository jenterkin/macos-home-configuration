{ pkgs, ... }:

{
  home.packages = with pkgs; [(
    pkgs.writeShellScriptBin "fnew" ''
      #!${zsh}/bin/zsh

      nix flake new -t ~/repos/nix-templates#"''${1}" "''${2}"
    ''
  )];
}
