{...}: {
  services.tailscale.enable = true;

  networking = {
    # Enable networking
    networkmanager.enable = true;
    nameservers = ["1.1.1.1" "8.8.8.8" "100.100.100.100"];
    search = ["persian-map.ts.net"];

    # Open ports in the firewall.
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # firewall.enable = false;

    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  };
}
