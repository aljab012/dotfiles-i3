{ config, pkgs, ... }:

{
  # Sound configuration

  # Disable PipeWire to avoid conflicts with PulseAudio
  services.pipewire.enable = false;

  services.pulseaudio.enable = true;
  services.pulseaudio.package = pkgs.pulseaudioFull;

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
