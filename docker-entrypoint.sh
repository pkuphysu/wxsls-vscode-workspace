#!/usr/env bash

cd /workspace/wxsls-pyfn
poetry install --no-interaction --no-ansi
pre-commit install
cd /workspace/wxsls-page
npm install --no-audit --no-fund
npm husky install
cd /workspace

exec "$@"
