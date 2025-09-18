{ config, pkgs, ... }:

{
  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Asia/Dubai";

  zramSwap.enable = true;

  # Nix Settings
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Automatic garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # Automatic store optimization
  nix.settings.auto-optimise-store = true;
}
