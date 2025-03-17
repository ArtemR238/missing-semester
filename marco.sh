#!/usr/bin/env bash


marco() {
  export MARCO="$(pwd)"
}

polo() {
  cd "$MARCO" || echo "No directory stored in \$MARCO"
}
