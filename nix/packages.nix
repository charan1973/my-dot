{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz") {} }:

{
  environment.systemPackages = with pkgs; [
    neovim
    git
    unzip
    docker-client
    fzf
    htop
    # nodejs_18 # check for version manager - nvm
    python3
    ripgrep
    tree-sitter
    nil
    tiny
    stig
    go # check for version manager - gvm
    vscode
    colima
    adoptopenjdk-openj9-bin-11 # check for version manager - jabba
    clojure
    rlwrap
    zsh
    oh-my-zsh
    zsh-powerlevel10k
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}


