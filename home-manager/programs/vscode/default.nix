{pkgs, ...}:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      github.copilot
      github.copilot-chat
      biomejs.biome
      yoavbls.pretty-ts-errors
      enkia.tokyo-night
    ];
  };
}
