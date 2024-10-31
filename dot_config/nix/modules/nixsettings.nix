{ config, pkgs, ... }:

{
  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Asia/Dubai";

  # Nix Settings
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
