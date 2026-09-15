#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    csi-driver-smb \
    csi-driver-smb \
    --repo https://kubernetes-csi.github.io/csi-driver-smb \
    --version "1.20.3" \
    --namespace default
} > rendered.yml
