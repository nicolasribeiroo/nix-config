{pkgs, ...}: {
  services.xserver = {
    enable = true;

    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    # Enable touchpad support (enabled default in most desktopManager).
    # libinput.enable = true;
  };

  environment.gnome.excludePackages = with pkgs; [
    epiphany
    geary
    seahorse
    cheese
  ];
}
