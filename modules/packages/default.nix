# Package installs with no configuration
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Standard shell tool replacements
    #
    # Command # Replaces
    # ------- # --------
    bat       # cat, more, less
    ripgrep   # grep
    fd        # find

    # Shell Navigation
    tree

    # Version Control
    gh

    # API Tooling
    httpie
    jq
  ];
}
