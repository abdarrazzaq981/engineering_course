#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
PORT=8888
echo "LLM Engineering Course - Jupyter Lab -> http://localhost:$PORT"
if command -v jupyter >/dev/null 2>&1; then
  jupyter lab --port "$PORT"
else
  echo "Jupyter not found. Install via: pip install jupyterlab  (or use the conda env in environment.yml)"
  exit 1
fi
