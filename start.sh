#!/bin/bash

set -e

uv run --env-file .env mcp-server.py
