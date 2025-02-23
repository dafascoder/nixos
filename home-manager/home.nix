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
    ./programs/tmux
    ./programs/hyprland
  ];


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
    zoxide
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
  enableCompletion = true;
  zplug = {
    enable = true;
    plugins = [
      { name = "zsh-users/zsh-autosuggestions"; }
      {name = "zsh-users/zsh-syntax-highlighting";}
  ]; 
 };
 shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch --flake ~/.config/nixos-config/";
  };
  history.size = 10000;
};

  programs.ghostty.enable = true;
   
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
