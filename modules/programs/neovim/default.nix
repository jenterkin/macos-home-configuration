{ ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraLuaPackages = luaPkgs: with luaPkgs; [
      luarocks
    ];
  };

  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
