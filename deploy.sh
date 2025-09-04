#!/bin/bash

# n8n Nexlayer Deployment Script
# This script helps deploy n8n to Nexlayer

set -e

echo "🚀 Starting n8n deployment to Nexlayer..."

# Check if required tools are installed
command -v docker >/dev/null 2>&1 || { echo "❌ Docker is required but not installed. Aborting." >&2; exit 1; }

# Build the Docker image
echo "📦 Building Docker image..."
docker build -t n8n-nexlayer .

# Tag the image for registry
echo "🏷️  Tagging image..."
docker tag n8n-nexlayer:latest ttl.sh/n8n-nexlayer:latest

# Push to registry
echo "📤 Pushing to registry..."
docker push ttl.sh/n8n-nexlayer:latest

echo "✅ Image built and pushed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Get your authentication token from app.nexlayer.io"
echo "2. Update the nexlayer.yaml file with your app name"
echo "3. Deploy using the Nexlayer MCP tools"
echo ""
echo "🔗 Your n8n instance will be available at: https://your-app-name.nexlayer.app"
echo ""
echo "🔐 Default credentials:"
echo "   Username: admin"
echo "   Password: password"
echo "   (Remember to change these in production!)"
