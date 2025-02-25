{pkgs, ...}:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode.extensions; [
      copilot
      copilot-chat
    ];
  };
}
