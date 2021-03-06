{ cabal, ansiTerminal }:

cabal.mkDerivation (self: {
  pname = "ansi-wl-pprint";
  version = "0.6.7.1";
  sha256 = "1by11bg1bd7z18hqgayk0w76hy5n63kmdl14gainlvfgr9jw506r";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ ansiTerminal ];
  meta = {
    homepage = "http://github.com/batterseapower/ansi-wl-pprint";
    description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
