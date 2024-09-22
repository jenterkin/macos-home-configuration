{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  packages = with pkgs; [
    bash-language-server
    lua-language-server
    nixd
    shellcheck
    shfmt
    vim-language-server
  ];
}
