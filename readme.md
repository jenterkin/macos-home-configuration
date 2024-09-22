This is just my personal [nix-darwin](https://github.com/LnL7/nix-darwin) + [Home Manager](https://github.com/nix-community/home-manager) config.

There are a couple hacks in here to work around some MacOS things that don't play nicely with Nix, and I haven't generalized it yet to work in Linux environments.

This repo should live in `~/.config/nix`.

Dependencies are just nix and nix-darwin. Home Manager is installed by the nix-darwin config.

First time setup:
```bash
darwin-rebuild switch --flake ~/.config/nix
```

For subsequent updates this is aliased to the following if you're using the provisioned zsh shell. Additionally it would soure the zsh config to pick up any changes that may have been applied from `darwin-rebuild switch`.
