{ self, inputs, ... }: {

  flake.nixosModules.niri = { config, pkgs, lib, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
  };

  perSystem = { pkgs, ... }: {
    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      settings = {};
    };
  };
}
