let
  sources = import ./nix/sources.nix;
  pkgs = import (fetchTarball sources.nixpkgs.url) { };
  haskellTools = with pkgs.haskellPackages; [
    implicit-hie
    stack
  ];
  otherTools = with pkgs; [ niv ];
in
pkgs.mkShell {
  nativeBuildInputs = haskellTools ++ otherTools;
}
