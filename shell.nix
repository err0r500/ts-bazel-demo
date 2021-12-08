{ system ? builtins.currentSystem }:

let
  pkgs = import
    (builtins.fetchTarball {
      name = "nixos-21.05";
      url = "https://github.com/NixOS/nixpkgs/archive/21.05.tar.gz";
      sha256 = "1ckzhh24mgz6jd1xhfgx0i9mijk6xjqxwsshnvq789xsavrmsc36";
    })
    { };
in
pkgs.mkShell {
  buildInputs =
    [
      pkgs.nixpkgs-fmt # just to edit this file
      pkgs.bazel_4
    ];
}
