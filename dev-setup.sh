#!/bin/bash
# Development setup script for Shopify app

# Ensure required environment variables are set
export SHOPIFY_APP_URL=http://localhost:3000
export PORT=3000
export FRONTEND_PORT=8081

# Generate Prisma client
echo "Generating Prisma client..."
npx prisma generate

# Start development server
echo "Starting development server..."
npm exec remix vite:dev
