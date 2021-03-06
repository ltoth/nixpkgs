{ cabal, lens, time }:

cabal.mkDerivation (self: {
  pname = "lens-datetime";
  version = "0.2.1";
  sha256 = "1wqks7ynw3njlizdd9hvgrc1xjxcgcfck9ppj1lgg8wr3l2myi72";
  buildDepends = [ lens time ];
  meta = {
    homepage = "http://github.com/nilcons/lens-datetime";
    description = "Lenses for Data.Time.* types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
