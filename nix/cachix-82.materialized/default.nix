{
  extras = hackage:
    { packages = { cachix82 = ./cachix82.nix; }; };
  resolver = "lts-17.9";
  modules = [ ({ lib, ... }: { packages = {}; }) { packages = {}; } ];
  }