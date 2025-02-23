{pkgs,...}:
{
  programs.tmux = {
   enable = true;
   shortcut = 'a';
    newSession = true;
    # Stop tmux+escape craziness.
    escapeTime = 0;

    extraConfig = ''
      set -g default-terminal "screen-256color"
    '';
    };

  };


}
