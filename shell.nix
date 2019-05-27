{ nixpkgs ? import <nixpkgs> {} } :

let
  inherit (nixpkgs) pkgs;
  pythonPackages = pkgs.python3Packages;
in

pkgs.stdenv.mkDerivation {
  name = "my-django-env-0";
  buildInputs = [
    pythonPackages.python
    pythonPackages.django_2_2
    pkgs.jetbrains.pycharm-professional
    pkgs.emacs
    pkgs.vscode
  ];
}
