{ cabal, asn1Encoding, asn1Types, mtl, text, time }:

cabal.mkDerivation (self: {
  pname = "asn1-parse";
  version = "0.8.1";
  sha256 = "021mbm5aayfx9vhxq4x1jj3gpnzq0bqaqcl1zsaa2a6l0qzpnmh9";
  buildDepends = [ asn1Encoding asn1Types mtl text time ];
  meta = {
    homepage = "http://github.com/vincenthz/hs-asn1";
    description = "Simple monadic parser for ASN1 stream types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
