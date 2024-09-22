{ ... }:

{
  home.stateVersion = "23.05";

  imports = [
    ./modules/macos_hacks/default.nix
    ./modules/packages/default.nix
    ./modules/programs/default.nix
    ./modules/scripts/default.nix
  ];

  programs.home-manager.enable = true;
}
