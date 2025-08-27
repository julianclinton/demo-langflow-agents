#!/bin/bash

set -e

cd "$(dirname "$0")/.."

docker build -t demo-langflow-agents-local:latest -f Dockerfile .