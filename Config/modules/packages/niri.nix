{ self, inputs, ... }: {

  systems = [ "x86_64-linux" ];

  flake.nixosModules.niri = { config, pkgs, lib, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
  };

  perSystem = { pkgs, lib, ... }: {
    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs;
      settings = {
        input = {
          keyboard = {
            xkb = { layout = "us,ru"; };
	    repeat-rate = 40;
	    repeat-delay = 250;
	  };
	};
	layout = {
          gaps = 4;
	  focus-ring.off = _: {};
	  border = {
            width = 4;
	    active-color = "#f2703d";
	    inactive-color = "a35e43";
	    urgent-color = "f23c1f";
	  };
	};
	binds = {
          "Mod+T".spawn = (lib.getExe self.packages.${pkgs.stdenv.hostPlatform.system}.myAlacritty);

	  "Mod+Q".close-window = _: {};
	  "Mod+F".maximize-column = _: {};
	  "Mod+V".fullscreen-window = _: {};
	  "Mod+B".toggle-window-floating = _: {};

	  "Mod+H".focus-column-left = _: {};
	  "Mod+L".focus-column-right = _: {};
	  "Mod+K".focus-window-up = _: {};
	  "Mod+J".focus-window-down = _: {};

	  "Mod+Shift+H".move-column-left = _: {};
	  "Mod+Shift+L".move-column-right = _: {};
	  "Mod+Shift+K".move-window-up = _: {};
	  "Mod+Shift+J".move-window-down = _: {};

	  "Mod+O".toggle-overview = _: {};
	  "Mod+W".focus-workspace-up = _: {};
	  "Mod+S".focus-workspace-down = _: {};
	  "Mod+Shift+W".move-column-to-workspace-up = _: {};
	  "Mod+Shift+S".move-column-to-workspace-down = _: {};

          "Mod+Shift+E".quit = _: {};
	};
      };
    };
  };
}
