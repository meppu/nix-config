{ pkgs, ... }: 

{
  imports = [
    ./git/default.nix
    ./gnome/default.nix
    ./vscode/default.nix
    ./wallpapers/default.nix
  ];

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  home = {
    username = "meppu";
    homeDirectory = "/home/meppu";
    stateVersion = "23.05";

    packages = with pkgs; [
      # Dev
      pods
      erlang elixir rustup deno nodejs_20 zig gcc13
      
      # Daily
      google-chrome-dev discord spotify authy
    ];
  };
}
