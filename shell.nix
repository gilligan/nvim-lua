{ pkgs ? import <nixpkgs> {} }:

let 
  inherit (pkgs) stdenv lib;
in
  pkgs.mkShell {
    buildInputs = with pkgs; [ gcc gnumake nodejs stylua lua-language-server jdt-language-server unzip ];
  }
