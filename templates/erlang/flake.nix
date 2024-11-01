{
  description = "Starter template for Erlang with Rebar3 and ErlangLS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    flake-utils,
    nixpkgs,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        erlang = pkgs.beam.packages.erlangR27;
      in {
        devShell = pkgs.mkShell {
          packages = [
            erlang.erlang
            erlang.erlang-ls
            erlang.rebar3
          ];
        };
      }
    );
}
