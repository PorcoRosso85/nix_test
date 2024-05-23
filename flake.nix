{
  description = "My Neovim flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-darwin"; # Or whatever system you are on
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.neovim
          pkgs.zsh
          pkgs.zsh-powerlevel10k
          pkgs.git
          pkgs.gh
          pkgs.curl
          pkgs.wget
          pkgs.eza
          pkgs.fd
          pkgs.bat
          pkgs.lazygit
          pkgs.nil
          pkgs.nixpkgs-fmt
          # pkgs.docker-cli
          # pkgs.containerd?
          # pkgs.lazydocker
          pkgs.act
        ];

        shellHook = ''
          # Set Zsh as the default shell
          export SHELL=$(which zsh)
          # Source the powerlevel10k theme
          echo 'source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
          # Start Zsh
          exec zsh
        '';
      };
    };
}
