# NixOS Configuration

Create a file `/etc/nixos/configuration.nix` with the following content:

``` nix
{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      /home/neon/.config/nix/config.nix
    ];

}
```

## Update NixOS build

``` shell
sudo nixos-rebuild switch
```


## Adding file using chezmoi

``` shell
chezmoi add file.txt
```

## Adding directory using chezmoi

``` shell
chezmoi add directory
```
