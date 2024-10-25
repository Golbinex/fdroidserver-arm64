# shell.nix
let
  # We pin to a specific nixpkgs commit for reproducibility.
  # Last updated: 2024-04-29. Check for new commits at https://status.nixos.org.
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  LIBGUESTFS_PATH=/path/to/arm64/libguestfs-appliance
  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      python-vagrant
      requests
      libvirt
      #requestbuilder
      pyyaml
      clint
      paramiko
      pyasn1
      pyasn1-modules
      gitpython
      asn1crypto
      ruamel-base
      ruamel-yaml
      qrcode
    ]))
  ];
}
