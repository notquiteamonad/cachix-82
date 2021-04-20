{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  ({
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cachix82"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright notquiteamonad 2021";
      maintainer = "44178347+notquiteamonad@users.noreply.github.com";
      author = "notquiteamonad";
      homepage = "https://github.com/notquiteamonad/cachix82#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/notquiteamonad/cachix82#readme>";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [ "README.md" ];
      extraTmpFiles = [];
      extraDocFiles = [];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        modules = [ "Paths_cachix82" ];
        hsSourceDirs = [ "src" ];
        };
      exes = {
        "cachix82-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cachix82" or (errorHandler.buildDepError "cachix82"))
            ];
          buildable = true;
          modules = [ "Paths_cachix82" ];
          hsSourceDirs = [ "app" ];
          mainPath = [ "Main.hs" ];
          };
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ./.; }) // {
    cabal-generator = "hpack";
    }