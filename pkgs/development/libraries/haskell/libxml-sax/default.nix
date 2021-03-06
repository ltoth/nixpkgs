{ cabal, libxml2, text, xmlTypes }:

cabal.mkDerivation (self: {
  pname = "libxml-sax";
  version = "0.7.5";
  sha256 = "0lbdq6lmiyrnzk6gkx09vvp928wj8qnqnqfzy14mfv0drj21f54r";
  buildDepends = [ text xmlTypes ];
  extraLibraries = [ libxml2 ];
  pkgconfigDepends = [ libxml2 ];
  meta = {
    homepage = "https://john-millikin.com/software/haskell-libxml/";
    description = "Bindings for the libXML2 SAX interface";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
