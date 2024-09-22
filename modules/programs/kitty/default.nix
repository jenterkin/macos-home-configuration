{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    darwinLaunchOptions = [
      "--single-instance"
      "--config=/Users/jenterkin/.config/kitty/kitty.conf"
      "--listen-on=unix:/tmp/kitty"
    ];

    shellIntegration.enableZshIntegration = true;

    theme = "Ayu";

    settings = {
      enable_audio_bell = false;
      macos_option_as_alt = true;

      allow_remote_control = true;
    };

    font = {
      name = "Monaspace Neon Var";
      package = pkgs.monaspace;
      size = 16;
    };
  };
}
