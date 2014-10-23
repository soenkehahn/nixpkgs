{ pkgs }:

let
  inherit (pkgs) stdenv fetchurl;
in
stdenv.mkDerivation rec {
  name = "hasklig";

  src = fetchurl {
    url = "https://github.com/i-tu/Hasklig/releases/download/0.4/Hasklig-0.4.zip";
    sha256 = "14j0zfapw6s6x5psp1rvx2i59rxdwb1jgwfgfhzhypr22qy40xi8";
  };

  buildInputs = [pkgs.unzip];

  buildCommand = ''
    mkdir hasklig
    cd hasklig
    unzip ${src}
    mkdir -p $out/share/fonts/opentype/
    cp * $out/share/fonts/opentype/
  '';

  meta = {
    description = "Ligatures for Haskell code.";
    homepage = https://github.com/i-tu/Hasklig;
    license = stdenv.lib.licenses.ofl;
    platforms = with stdenv.lib.platforms; linux;
  };
}
