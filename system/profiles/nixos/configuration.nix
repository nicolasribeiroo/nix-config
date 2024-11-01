# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{...}: {
  imports = [
    ./hardware-configuration.nix

    ./users/nicolas.nix

    ../../shared/boot.nix
    ../../shared/font.nix
    ../../shared/gnome.nix
    ../../shared/local.nix
    ../../shared/networking.nix
    ../../shared/nix.nix
    ../../shared/shell.nix
    ../../shared/virtualisation.nix
    ../../shared/sound.nix
  ];

  # Define your hostname.
  networking.hostName = "nixos";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
