{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, nix-darwin, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-darwin;
    in 
      {
        devShell.x86_64-darwin = import ./shell.nix { inherit pkgs; };

        darwinConfigurations = {
          "Jordans-MacBook-Pro" = nix-darwin.lib.darwinSystem {
            system = "x86_64-darwin";
            modules = [
              ./configuration.nix
              home-manager.darwinModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  users.jenterkin = import ./home.nix;
                };
              }
            ];
          };
        };
      };
}
