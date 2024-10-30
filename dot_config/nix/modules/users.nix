{ config, pkgs, ... }:

{
  # User Account
  users.users.neon = {
    isNormalUser = true;
    description = "neon";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    packages =
      with pkgs;
      [
        # Add user-specific packages here
      ];
  };
  users.defaultUserShell = pkgs.zsh;
}
