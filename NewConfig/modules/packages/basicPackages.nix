{ self, inputs, ... }: {

  flake.nixosModules.BasicPackages = { pkgs, ... }: {

  environment.systemPackages = with pkgs; [
     neovim
     fastfetch
     alacritty
  ];
  };
}
