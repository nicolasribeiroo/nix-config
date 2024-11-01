{
  description = "Starter template for Node.js with pNPM";

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
        node = pkgs.nodejs_22;
      in {
        devShell = pkgs.mkShell {
          packages = [
            node.withPackages
            (nodePackages: [
              nodePackages.pnpm
            ])
          ];
        };
      }
    );
}
