{ cabal, base64Bytestring, blazeBuilder, filepath, hspec, random
, sendmail ? "sendmail", text
}:

cabal.mkDerivation (self: {
  pname = "mime-mail";
  version = "0.4.5.2";
  sha256 = "0s5fj20n3lc2hn1mqpsvai63pgrl7vhqv26psdzqdwl70w9c04zf";
  buildDepends = [
    base64Bytestring blazeBuilder filepath random text
  ];
  testDepends = [ blazeBuilder hspec text ];
  configureFlags = "--ghc-option=-DMIME_MAIL_SENDMAIL_PATH=\"${sendmail}\"";
  meta = {
    homepage = "http://github.com/snoyberg/mime-mail";
    description = "Compose MIME email messages";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
