{ config, pkgs, ... }:

{
  # Hostname
  networking.hostName = "nixos";

  # Networking
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
}
