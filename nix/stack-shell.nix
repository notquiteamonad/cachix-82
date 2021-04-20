{ ghc }:
let pkgs = import ./haskell-nix-pkgs.nix;
in
with pkgs;
haskell.lib.buildStackProject {
  inherit ghc;
  name = "cachix-82";
  buildInputs = [ ];
}
