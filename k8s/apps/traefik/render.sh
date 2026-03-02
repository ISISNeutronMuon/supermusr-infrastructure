#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  # https://artifacthub.io/packages/helm/traefik/traefik
  helm template \
    traefik \
    traefik \
    --repo https://helm.traefik.io/traefik \
    --version "37.1.1" \
    --namespace traefik \
    --include-crds \
    --values src/values.yml

  cat src/k8s/*.yml
} > rendered.yml
