{ self, inputs, ... }: {

#   flake.nixosModules.Nixvim = { inputs, nixvim, pkgs, ... }: {
#     
#     programs.nixvim = {
#       colorshemes.kanagawa.enable = true;
#       globals.mapleader = " ";
#       opts = {
#         number = true;
# 	relativenumber = true;
# 	mouse = "";
#       };
#       keymaps = [
#         {
# 	  # fast hotkey to run rust file
#           mode = "n";
# 	  key = "<leader>r";
# 	  action = "<cmd>w | spl | term cargo run<Cr>";
# 	}
# 	{
#           # :q command
# 	  mode = "n";
# 	  key = "<leader>q";
# 	  action = "<cmd>q<CR>";
# 	}
#         {
#           # hotkey to swap lines (UP)
#           mode = "n";
# 	  key = "A-k";
# 	  action = "<cmd>m .+1<CR>";
# 	}
#         {
#           # hotkey to swap lines (DOWN)
#           mode = "n";
# 	  key = "A-j";
# 	  action = "<cmd>m .-2<CR>";
# 	}
#         {
#           # hotkey to swap lines (VISUAL, UP)
#           mode = "v";
# 	  key = "A-k";
# 	  action = "<cmd>m '>+1<CR>gv";
# 	}
#         {
#           # hotkey to swap lines (VISUAL, DOWN)
#           mode = "v";
# 	  key = "A-j";
# 	  action = "<cmd>m '<-2<CR>gv";
# 	}
# 	{
# 	  # hotkey for Neotree
# 	  mode = "n";
# 	  key = "<leader>e";
# 	  action = "<cmd>Neotree float<CR>";
# 	}
#       ];
#       plugins = {
#         treesitter = {
# 	  enable = true;
# 	  highlight.enable = true;
# 	};
# 	neo-tree.enable = true;
#       };
#     };
#   };
}
