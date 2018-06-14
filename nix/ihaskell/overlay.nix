self: pkgs:
{ ihaskell = import (pkgs.fetch ./src.json) { nixpkgs = pkgs; };

  #inherit (self.ihaskell) ihaskellWith
}
