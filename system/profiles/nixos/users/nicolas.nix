{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nicolas = {
    isNormalUser = true;

    description = "Nicolas Ribeiro";
    extraGroups = ["networkmanager" "wheel" "libvirtd"];

    shell = pkgs.fish;
  };
}
