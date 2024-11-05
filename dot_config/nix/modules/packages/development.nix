{ pkgs }:

with pkgs;

[
  gnumake
  go
  gopls
  golangci-lint
  nodejs_22
  pnpm
  nixfmt-rfc-style
  gomodifytags
  gotests
  gore
  go-swag
  go-migrate
  docker-compose
  dockfmt
  home-manager
  ispell
  nodePackages.prettier
]
