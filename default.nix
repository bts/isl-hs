{ mkDerivation, base, c2hs, containers, inline-c, isl, stdenv
, template-haskell
}:
mkDerivation {
  pname = "isl-hs";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers inline-c template-haskell
  ];
  librarySystemDepends = [ isl ];
  libraryToolDepends = [ c2hs ];
  executableHaskellDepends = [ base ];
  license = stdenv.lib.licenses.bsd3;
}
