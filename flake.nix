{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        # Deployment tools
        kapp

        # Manifest rendering tools
        kubernetes-helm

        # Secret management
        sops
        vals

        # Code formatting tools
        alejandra
        treefmt
        mdl
      ];

      env.KAPP_NAMESPACE = "kapp";
    };
  };
}
