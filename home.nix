{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    username = "neon";
    homeDirectory = "/home/neon";

    stateVersion = "23.11";
  };
}
