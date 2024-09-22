{ pkgs, ... }:

{
  home.packages = with pkgs; [(
    pkgs.writeShellScriptBin "finit" ''
      #!${zsh}/bin/zsh

      nix flake init -t ~/repos/nix-templates#"''${1}"
    ''
  )];
}
