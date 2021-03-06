{ cabal, filepath, parsec, strict, time }:

cabal.mkDerivation (self: {
  pname = "wxdirect";
  version = "0.90.1.1";
  sha256 = "0ibhxl4n66w094jhca01z2vmibgz0nn7qddgxzqngvajzjvnha98";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ filepath parsec strict time ];
  meta = {
    homepage = "http://haskell.org/haskellwiki/WxHaskell";
    description = "helper tool for building wxHaskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
