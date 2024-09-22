# Package installs that have configuration
{ ... }:

{
  imports = [
    ./direnv/default.nix
    ./firefox/default.nix
    ./git/default.nix
    ./neovim/default.nix
    ./zsh/default.nix
    ./kitty/default.nix
    ./zellij/default.nix
  ];
}
