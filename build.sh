#!/usr/bin/env bash
set -e

# TS LAWCET Build Script
# Builds the Next.js application

echo "Building TS LAWCET..."

cd apps/web || exit 1

# Install dependencies
pnpm install --prefer-offline || npm install

# Build the Next.js app
pnpm build || npm run build

echo "Build complete!"
