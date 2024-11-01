{pkgs, ...}: {
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };

    libvirtd.enable = true;
  };

  environment.systemPackages = with pkgs; [
    virt-manager
    dive # look into docker image layers
    docker-compose # start group of containers for dev
  ];
}
