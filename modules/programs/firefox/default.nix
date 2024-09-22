{ ... }:

{
  # No firefox on macos :(
  ## enable = true;

  # This is to support user scripts so I can customize how firefox looks and
  # acts. Since firefox isn't available via home-manager, I can't manage the
  # entire configuration here. In addition to the following files, I need to 
  home.file."Library/Application Support/Firefox/Profiles/nf4rk78h.default-release/chrome" = {
    source = ./config/program;
    recursive = true;

    # Because the path of Kitty changes from the Nix profile, I am not able
    # to run this from my normal env. Instead I need to prompt myself to
    # manually run this already gross hack
    onChange = ''
      echo
      echo
      echo "=================================================================="
      echo "              Super dumb manual step may be required"
      echo "=================================================================="
      echo "The autoload config files for Firefox have may have changed. If"
      echo "they have, or if you don't know, please run the following command"
      echo "in \`Terminal.app\`:"
      echo
      echo "    cp -R ~jenterkin/.config/nix/modules/programs/firefox/config/program/* /Applications/Firefox.app/Contents/Resources"
      echo "=================================================================="
      echo
      echo
    '';
  };
}
