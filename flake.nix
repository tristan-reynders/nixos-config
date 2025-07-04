{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nvf, ... }:
  let
    system = "x86_64-linux";
  in {
    homeConfigurations.tristan = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        { nixpkgs.config.allowUnfree = true; }
        nvf.homeManagerModules.default
        ./home
      ];
    };
    nixosConfigurations.zenbook = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./hosts/zenbook
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.tristan = import ./home;
          home-manager.extraSpecialArgs = { inherit nvf; };
          home-manager.sharedModules = [ nvf.homeManagerModules.default ];
        }
      ];
    };
  };
}
