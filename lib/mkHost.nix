{ inputs }:

{ hostname, system, users ? {} }:

inputs.nixpkgs.lib.nixosSystem {
  inherit system;

  specialArgs = { inherit inputs; };

  modules = [
    ../hosts/${hostname}

    inputs.home-manager.nixosModules.home-manager
    {
      networking.hostName = hostname;

      home-manager = {
        useGlobalPkgs       = true;
        useUserPackages     = true;
        backupFileExtension = ".nixos";
        users               = users;
        extraSpecialArgs    = { inherit inputs; };
      };
    }
  ];
}