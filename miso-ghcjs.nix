{ mkDerivation, aeson, base, bytestring, containers, ghcjs-base
, network-uri, scientific, stdenv, text, transformers
, unordered-containers, vector, hspec, hspec-core, servant
, http-types, http-api-data, BoundedChan
}:
mkDerivation {
  pname = "miso";
  version = "0.1.2.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring containers ghcjs-base network-uri scientific
    text transformers unordered-containers vector hspec hspec-core servant
    http-types http-api-data BoundedChan
  ];
  homepage = "http://github.com/dmjio/miso";
  description = "Haskell front-end framework";
  license = stdenv.lib.licenses.bsd3;
}
