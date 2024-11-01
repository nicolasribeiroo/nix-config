{pkgs, ...}: {
  boot = {
    # Bootloader.
    loader = {
      efi.canTouchEfiVariables = true;

      # Grub
      grub.enable = true;
      grub.device = "/dev/sda";
      grub.useOSProber = true;
    };

    kernelPackages = pkgs.linuxPackages_latest;
    supportedFilesystems = ["ntfs"];
  };
}
