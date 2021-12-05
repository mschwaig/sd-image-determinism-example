{
  description = "Raspberry PI NixOS image";

  inputs = {
    nixpkgs = {
      url = github:mschwaig/nixpkgs/sd-image-determinism;
    };
  };

  outputs = { self, nixpkgs }: {

    defaultPackage.x86_64-linux = self.nixosConfigurations.pi.config.system.build.sdImage;

    nixosConfigurations.pi = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";

      modules = [
        ./configuration.nix
      ];

    };

  };
}
