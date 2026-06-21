{ self, inputs, ... }: {
# 
#   systems = [ "x86_64-linux" ];
# 
#   perSystem = { pkgs, ... }: {
#     packages.myAlacritty = inputs.wrapper-modules.wrappers.alacritty.wrap {
#       inherit pkgs;
#       settings = (builtins.fromTOML(builtins.readFile ./alacritty.toml));
#     };
#   };
}
