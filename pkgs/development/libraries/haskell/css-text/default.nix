{ cabal, attoparsec, hspec, QuickCheck, text }:

cabal.mkDerivation (self: {
  pname = "css-text";
  version = "0.1.2.1";
  sha256 = "1xi1n2f0g8y43p95lynhcg50wxbq7hqfzbfzm7fy8mn7gvd920nw";
  buildDepends = [ attoparsec text ];
  testDepends = [ attoparsec hspec QuickCheck text ];
  meta = {
    homepage = "http://www.yesodweb.com/";
    description = "CSS parser and renderer";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
