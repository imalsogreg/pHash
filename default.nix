{ stdenv, stdenvAdapters, gcc48, fetchFromGitHub, libav_0_8, libsndfile, libsamplerate, mpg123, cimg, perl, writeScript }:

(stdenvAdapters.overrideCC stdenv gcc48).mkDerivation {
# stdenv.mkDerivation {
  name = "pHash-0.9.4";
  buildInputs = [ libav_0_8 libsndfile libsamplerate mpg123 cimg ];
  configureFlags = ["--enable-video-hash=no"];
  src = ./.;
  # src = fetchFromGitHub {
  #   owner = "clearscene";
  #   repo = "pHash";
  #   rev = "0.9.4";
  #   sha256 = "0y4gknfkns5sssfaj0snyx29752my20xmxajg6xggijx0myabbv0";
  # };
  inherit perl;
}
