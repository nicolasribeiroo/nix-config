{pkgs, ...}: {
  imports = [
    ./discord/default.nix
    ./git/default.nix
    ./gnome/default.nix
    ./starship/default.nix
    ./vscode/default.nix
  ];

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  home = {
    username = "nicolas";
    homeDirectory = "/home/nicolas";
    stateVersion = "24.05";

    packages = with pkgs; [
      # nix
      alejandra
      nil
      # encryption
      cryptsetup
      # development
      dive # look into docker image layers
      docker-compose # start group of containers for dev
      podman-compose # start group of containers for dev
      podman-tui # status of containers in the terminal
      vscode
      # daily
      google-chrome
      vesktop
    ];
  };
}
