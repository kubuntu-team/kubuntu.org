#!/bin/bash

# Deployment Configuration
# This file contains environment variables and settings for deployment

# Site Configuration
export SITE_URL="https://kubuntu.org"
export SITE_ENV="production"
export HUGO_ENV="production"
export HUGO_ENABLEGITINFO=true

# Build Settings
export BUILD_DIR="public"
export DEPLOY_ARCHIVE="kubuntu-site.tar.gz"
export HUGO_VERSION="0.121.1"

# Cache Settings
export CACHE_CONTROL="public, max-age=3600"
export CACHE_EXPIRY="1h"

# CDN Settings (if applicable)
export CDN_ENABLED=true
export CDN_URL="https://cdn.kubuntu.org"

# Security Settings
export SECURITY_HEADERS=true
export SSL_ENABLED=true
export HSTS_ENABLED=true

# Performance Settings
export ENABLE_COMPRESSION=true
export ENABLE_MINIFICATION=true
export ENABLE_IMAGE_OPTIMIZATION=true

# Monitoring Settings
export ENABLE_ANALYTICS=true
export ENABLE_ERROR_TRACKING=true

# Backup Settings
export BACKUP_ENABLED=true
export BACKUP_RETENTION_DAYS=7

# Load environment-specific settings
if [ -f ".env.production" ]; then
    source .env.production
fi

# Print configuration summary
echo "Deployment Configuration:"
echo "------------------------"
echo "Site URL: $SITE_URL"
echo "Environment: $SITE_ENV"
echo "Build Directory: $BUILD_DIR"
echo "Hugo Version: $HUGO_VERSION"
echo "Cache Control: $CACHE_CONTROL"
echo "CDN Enabled: $CDN_ENABLED"
echo "Security Headers: $SECURITY_HEADERS"
echo "Compression: $ENABLE_COMPRESSION"
echo "Minification: $ENABLE_MINIFICATION"
echo "Image Optimization: $ENABLE_IMAGE_OPTIMIZATION"
echo "Analytics: $ENABLE_ANALYTICS"
echo "Error Tracking: $ENABLE_ERROR_TRACKING"
echo "Backup: $BACKUP_ENABLED" 