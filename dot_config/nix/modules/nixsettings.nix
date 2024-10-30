{ config, pkgs, ... }:

{
  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # Nix Settings
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
