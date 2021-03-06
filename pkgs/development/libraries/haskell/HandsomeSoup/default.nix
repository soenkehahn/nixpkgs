# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, hspec, HTTP, hxt, hxtHttp, MaybeT, mtl, network
, networkUri, parsec, transformers
}:

cabal.mkDerivation (self: {
  pname = "HandsomeSoup";
  version = "0.3.3";
  sha256 = "0g2b3mw0asam005kz77zm3bsrjaa7q3n6wdj3ahr7hppivsdwizk";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    HTTP hxt hxtHttp MaybeT mtl network networkUri parsec transformers
  ];
  testDepends = [ hspec hxt ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/egonSchiele/HandsomeSoup";
    description = "Work with HTML more easily in HXT";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
