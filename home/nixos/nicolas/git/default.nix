{...}: {
  programs.git = {
    enable = true;
    userName = "nicolasribeiroo";
    userEmail = "git@niskii.dev";

    extraConfig = {
      init.defaultBranch = "main";
      core.editor = "code --wait";

      gpg = {
        format = "ssh";
        ssh.allowedSignersFile = "~/.ssh/allowed_signers";
      };

      commit.gpgsign = true;
      user.signingkey = "~/.ssh/id_ed25519.pub";
    };
  };
}
