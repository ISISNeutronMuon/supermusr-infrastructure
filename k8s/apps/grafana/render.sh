#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    grafana \
    grafana \
    --repo https://grafana.github.io/helm-charts \
    --version "9.4.5" \
    --namespace grafana \
    --values src/values.yml

  cat src/k8s/*.yml
  cat src/k8s/dashboards/*.yml
} > rendered.yml
