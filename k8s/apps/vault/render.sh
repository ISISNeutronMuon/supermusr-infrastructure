#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    vault-secrets-operator \
    vault-secrets-operator \
    --repo https://helm.releases.hashicorp.com \
    --version "1.0.0" \
    --namespace vault-op \
    --include-crds \
    --values src/values.yml

  cat src/k8s/*.yml
} > rendered.yml
