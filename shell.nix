let
  # Create a package set with some overlays
  pkgs = import ./nix;
  #ihaskell = pkgs.ihaskellWithPackages
    #(ps:
      #[
        #ps.aeson
        #ps.compact
        #ps.conduit
        #ps.conduit-combinators
        #ps.ihaskell-charts
        #ps.leveldb-haskell
        #ps.plots
        #ps.wreq
      #]
    #);
in pkgs.mkShell
  {
    name = "my-jupyter";
    buildInputs = [ pkgs.ihaskell ];
  }
