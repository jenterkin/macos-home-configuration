{ ... }:

{
  programs.git = {
    enable = true;

    diff-so-fancy.enable = true;

    userName = "jenterkin";
    userEmail = "jordan.a.enterkin@gmail.com";

    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };
}
