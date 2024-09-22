{ pkgs, ... }:

{
  environment.systemPackages = [ pkgs.git ];

  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";

  security.pam.enableSudoTouchIdAuth = true;

  # configurationRevision = self.rev or self.dirtyRev or null;
  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  nixpkgs.hostPlatform = "x86_64-darwin";

  users.users.jenterkin = {
    name = "jenterkin";
    home = "/Users/jenterkin";
    shell = pkgs.zsh;
  };
}
#     # Expose the package set, including overlays, for convenience.
#     darwinPackages = self.darwinConfigurations."Jordans-MacBook-Pro".pkgs;
#   };
# }
