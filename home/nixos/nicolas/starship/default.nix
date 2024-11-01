{...}: {
  programs.starship = {
    enable = true;

    # Configuration written to ~/.config/starship.toml
    settings = {
      add_newline = true;

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };

      directory = {
        read_only = "  ";
        format = "[$path]($style)[$lock_symbol]($lock_style) ";
        truncate_to_repo = false;
      };

      container.disabled = true;
    };
  };
}
