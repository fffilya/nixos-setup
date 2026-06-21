{ self, inputs, ... }: {

  flake.nixosModules.BasicPackages = { pkgs, ... }: {

    environment.systemPackages = with pkgs; [
      # neovim # replaced it with nixvim
      fastfetch
      alacritty
      vesktop
      firefox
      steam
      audacity
      kdePackages.kdenlive
      vscode
      flameshot
      krita
      obsidian
      libreoffice
      github-desktop
      obs-studio
      vlc
      handbrake
      speedcrunch
      nemo
      rustc
      cargo
      gcc
      python3
    ];
  };
}
