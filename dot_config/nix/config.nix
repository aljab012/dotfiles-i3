{ config, pkgs, ... }:

{
  imports = [
    # Import all modules from the modules directory
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/xserver.nix
    ./modules/printing.nix
    ./modules/docker.nix
    ./modules/sound.nix
    ./modules/users.nix
    ./modules/packages.nix
    ./modules/shell.nix
    ./modules/nixsettings.nix
    ./modules/stateversion.nix
  ];
}
