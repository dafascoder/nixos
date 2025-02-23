# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  config,
  pkgs,
  ...
}: {

  imports = [
    ./programs/neovim
    ./programs/starship
  ];


  # TODO: Set your username
  home = {
    username = "dafas";
    homeDirectory = "/home/dafas";
  };

  # Add stuff for your user as you see fit:
  home.packages = with pkgs; [ 
    ripgrep
    fzf
    zig
    obsidian
  ];
  

  # Enable home-manager and git
  programs.home-manager.enable = true;
  

  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "dafascoder";
      user.email = "shirwa256@gmail.com";
      init.defaultBranch = "main";
    };
  };

  programs.zsh = {
    enable = true;
  };


  programs.ghostty.enable = true;
   
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
