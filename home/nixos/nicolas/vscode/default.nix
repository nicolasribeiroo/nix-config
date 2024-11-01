{pkgs, ...}: let
  user-config = builtins.fromJSON (builtins.readFile ./config.json);
in {
  programs.vscode = {
    enable = true;
    userSettings = user-config;

    extensions =
      (with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        elixir-lsp.vscode-elixir-ls
        rust-lang.rust-analyzer
        tamasfe.even-better-toml
        biomejs.biome
        dbaeumer.vscode-eslint
        esbenp.prettier-vscode
        eamodio.gitlens
        streetsidesoftware.code-spell-checker
        prisma.prisma
      ])
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "erlang-ls";
          publisher = "erlang-ls";
          version = "0.0.46";
          sha256 = "sha256-HvQ0qv1wA+qSN1+8r9Z4iTq7DtpsCvOZ73bACeHZ9+o=";
        }
        {
          name = "min-theme";
          publisher = "miguelsolorio";
          version = "1.5.0";
          sha256 = "sha256-DF/9OlWmjmnZNRBs2hk0qEWN38RcgacdVl9e75N8ZMY=";
        }
        {
          name = "symbols";
          publisher = "miguelsolorio";
          version = "0.0.21";
          sha256 = "sha256-WYLoZeCJXCzQH+d+rBsv0PGulASNAqjMEuLcIpL29nE=";
        }
        {
          name = "fluent-icons";
          publisher = "miguelsolorio";
          version = "0.0.19";
          sha256 = "sha256-OfPSh0SapT+YOfi0cz3ep8hEhgCTHpjs1FfmgAyjN58=";
        }
        {
          name = "discord-vscode";
          publisher = "icrawl";
          version = "5.8.0";
          sha256 = "sha256-IU/looiu6tluAp8u6MeSNCd7B8SSMZ6CEZ64mMsTNmU=";
        }
        {
          name = "code-spell-checker-portuguese-brazilian";
          publisher = "streetsidesoftware";
          version = "2.2.1";
          sha256 = "sha256-wwtlNl1WWeroL8tQotuk56SP8dxc6n5O/gQRuuEC3Bc=";
        }
        {
          name = "console-ninja";
          publisher = "wallabyjs";
          version = "1.0.364";
          sha256 = "sha256-anEh0So8m1iqDR7tvBk355dUmBFosiHrjSSusJvkfQw=";
        }
        {
          name = "vscode-tailwindcss";
          publisher = "bradlc";
          version = "0.13.46";
          sha256 = "sha256-8bbRq4kMUhN/Pw5i3aVUbLWxwMzecSngp3dcY4zhw3Q=";
        }
      ];
  };
}
