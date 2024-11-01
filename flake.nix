{
  description = "Flake for my config files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    home-manager,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      "nixos" = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./system/profiles/nixos/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.nicolas = import ./home/nixos/nicolas/home.nix;
          }
        ];
      };
    };

    templates = {
      elixir = {
        path = ./templates/elixir;
        description = "Starter template for Elixir with Mix";
      };

      erlang = {
        path = ./templates/erlang;
        description = "Starter template for Erlang with Rebar3 and ErlangLS";
      };
    };
  };
}
