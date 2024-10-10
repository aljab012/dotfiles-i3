{
  description = "Alhaitham's machines configuration";

    inputs = {
      nixpkgs.url = "nixpkgs/nixos-23.11";

      home-manager = {
        url = "github:nix-community/home-manager/release-23.11";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    };


    outputs = { self, nixpkgs, home-manager, ... }:

    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

    in {
      homeConfigurations = {
        neon = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home.nix
          ];
        };
      };

    };

}
