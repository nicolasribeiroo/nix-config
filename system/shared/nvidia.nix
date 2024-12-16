{...}: {
  services.xserver.videoDrivers = ["nvidia"];

  hardware = {
    graphics.enable = true;
    nvidia.open = true;
    nvidia.modesetting.enable = true;
    nvidia.nvidiaSettings = true;
  };
}
