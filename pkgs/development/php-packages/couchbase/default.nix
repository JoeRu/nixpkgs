{ lib, buildPecl, libcouchbase, zlib, cmake, pkg-config }:
let
  version = "4.1.4";
in
buildPecl {
  pname = "couchbase";

  inherit version;
  sha256 = "sha256-gLp9urt/eidZB1Bxhuyye1WeZAgqIroa05zdEp04POU=";

  configureFlags = [ "--with-couchbase" ];

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  buildInputs = [ libcouchbase zlib ];

  meta = {
    changelog = "https://pecl.php.net/package-info.php?package=couchbase&version=${version}";
    description = "Couchbase Server PHP extension";
    homepage = "https://pecl.php.net/package/couchbase";
    license = lib.licenses.asl20;
    maintainers = lib.teams.php.members;
  };
}
