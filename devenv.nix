{pkgs, ...}: {
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
}
