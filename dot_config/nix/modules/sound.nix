{ config, pkgs, ... }:

{
  # Sound configuration
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.package = pkgs.pulseaudioFull;

  # Bluetooth services
  hardware.bluetooth.enable = true;
  services.blueman = {
    enable = true;
  };

  # System packages
  environment.systemPackages = with pkgs; [
    bluez
    bluez
    bluez-tools
    blueman
    pavucontrol
  ];

  # User permissions
  users.users.neon = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "lp"
    ];
  };
}
