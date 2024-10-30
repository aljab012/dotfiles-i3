{ config, pkgs, ... }:

let
  # Import package lists from the packages directory
  developmentPackages = import ./packages/development.nix { inherit pkgs; };
  editorPackages = import ./packages/editors.nix { inherit pkgs; };
  utilityPackages = import ./packages/utilities.nix { inherit pkgs; };
  mediaPackages = import ./packages/media.nix { inherit pkgs; };
  networkingPackages = import ./packages/networking.nix { inherit pkgs; };
  shellPackages = import ./packages/shells.nix { inherit pkgs; };
in
{
  # System Packages
  environment.systemPackages =
    with pkgs;
    developmentPackages
    ++ editorPackages
    ++ utilityPackages
    ++ mediaPackages
    ++ networkingPackages
    ++ shellPackages;
}
