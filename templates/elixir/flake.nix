{
  description = "Starter template for Elixir with Mix";

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
        elixir = pkgs.beam.packages.erlangR27.elixir_1_17;
      in {
        devShell = pkgs.mkShell {
          packages =
            [elixir]
            ++ pkgs.lib.optionals pkgs.stdenv.isLinux (with pkgs; [
              libnotify
              inotify-tools
            ])
            ++ pkgs.lib.optionals pkgs.stdenv.isDarwin ((with pkgs.darwin.apple_sdk.frameworks; [
                CoreFoundation
                CoreServices
              ])
              ++ pkgs.terminal-notifier);
        };
      }
    );
}
