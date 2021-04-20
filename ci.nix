let
  pkgs = import ./nix/pkgs.nix;
  preCommitHooks = import ./nix/pre-commit-hooks.nix;
in
{
  build = pkgs.cachix82;
}
