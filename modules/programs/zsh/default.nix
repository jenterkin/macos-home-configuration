{ pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;

    dotDir = ".config/zsh";
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      # Nix
      ## Build and apply nix-darwin + home manager config. Source zsh config in
      ## case it's been updated.
      ##
      ##   NOTE: Anything changed in this alias will not take effect until
      ##         after the change has been applied.
      ##
      sw = lib.strings.concatStrings [
        "darwin-rebuild switch --flake ~/.config/nix"
        " && source ~/.config/zsh/.zshrc"
      ];

      # Standard toolchain
      ls = "ls -G";
      ll = "ls -l";

      # Docker
      dc = "docker-compose";

      # Kitty
      kr = "${pkgs.kitty}/bin/kitten @ load-config";

      # Zellij
      z = "${pkgs.zellij}/bin/zellij -s main";
      zc = "${pkgs.zellij}/bin/zellij -s";
      za = "${pkgs.zellij}/bin/zellij attach";
      zda = "${pkgs.zellij}/bin/zellij delete-all-sessions";
    };

    initExtra = ''
      export PATH="/run/current-system/sw/bin:$PATH"
      export PATH="/etc/profiles/per-user/jenterkin/bin:$PATH"

      autoload -U colors && colors

      blue_fg="%F{81}"
      orange_fg="%F{214}"
      reset_color="%{$reset_color%}"

      PROMPT="
      $orange_fg%~$reset_color
      $blue_fg➲ $reset_color"

      set -o vi

      # Load extra configs that I don't want checked into version control
      if [[ -f ~/.zsh_extra ]]; then
          source ~/.zsh_extra
      fi
    '';
  };
}
