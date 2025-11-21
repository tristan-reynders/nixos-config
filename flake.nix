{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "github:outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    lib.mkHost = import ./lib/mkHost.nix { inherit inputs; };

    nixosConfigurations.desktop = self.lib.mkHost {
      hostname = "desktop";
      system   = "x86_64-linux";
      users    = { tristan = import ./home/tristan; };
    };

    nixosConfigurations.zenbook = self.lib.mkHost {
      hostname = "zenbook";
      system   = "x86_64-linux";
      users    = { tristan = import ./home/tristan; };
    };
  };
}