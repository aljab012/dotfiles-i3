{ config, pkgs, ... }:

{
  # X Server and Window Manager
  services.xserver = {
    enable = true;
    xkb.options = "ctrl:nocaps";
    desktopManager.xterm.enable = false;
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [ i3lock ];
    };
  };
  services.displayManager.defaultSession = "none+i3";
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
