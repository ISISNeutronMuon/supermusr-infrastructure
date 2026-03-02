#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    k8s-monitoring \
    k8s-monitoring \
    --repo https://grafana.github.io/helm-charts \
    --version "3.8.0" \
    --namespace monitoring \
    --values src/values.yml \
  | vals ksdecode -f -

  cat src/k8s/*.yml
} > rendered.yml
