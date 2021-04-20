let
  # Get nixpkgs
  sources = import ./sources.nix { };
  pkgs = import (fetchTarball sources.nixpkgs.url) { };

  # haskell.nix build
  haskellNixPkgs = import ./haskell-nix-pkgs.nix;
  cachix82 = haskellNixPkgs.haskell-nix.project {
    src = haskellNixPkgs.haskell-nix.haskellLib.cleanGit {
      name = "cachix-82";
      src = ../.;
    };
    stack-sha256 = "0mabclj65r4pk0dk6cl80mdh5s5k7i0zmndvqabyj4z1wrjgnc36";
    materialized = ./cachix-82.materialized;
    checkMaterialization = true;
  };
in
{ inherit cachix82; }
