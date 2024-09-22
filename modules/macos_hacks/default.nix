# Stupid hacks to make macos work "okay"
{ config, pkgs, lib, ... }:

{
  # Need to create aliases because Launchbar doesn't look through symlinks.
  home.activation.link-apps = lib.hm.dag.entryAfter [ "linkGeneration" ] ''
    new_nix_apps="${config.home.homeDirectory}/Applications/Nix"
    rm -rf "$new_nix_apps"
    mkdir -p "$new_nix_apps"
    find -H -L "$newGenPath/home-files/Applications" -name "*.app" -type d -print | while read -r app; do
      real_app=$(readlink -f "$app")
      app_name=$(basename "$app")
      target_app="$new_nix_apps/$app_name"
      echo "Alias '$real_app' to '$target_app'"
      ${pkgs.mkalias}/bin/mkalias "$real_app" "$target_app"
    done
  '';
}
