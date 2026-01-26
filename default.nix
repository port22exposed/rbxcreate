{ lib, pkgs, stdenv }:
stdenv.mkDerivation {
  name = "rbxcreate";
  version = "0.1.0";

  src = lib.cleanSource ./.;

  nativeBuildInputs = with pkgs; [
    stylua
    selene
    lune
  ];
}
