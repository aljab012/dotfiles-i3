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
  vscode

  python313
  black
  pyright
  python313Packages.pip
  python313Packages.flake8
  python313Packages.pyflakes
  python313Packages.isort
  python313Packages.pytest
  pipenv

  hugo
  code-cursor
  pre-commit
  ruff
]
