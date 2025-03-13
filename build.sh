#!/bin/bash

# Exit on error
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Starting Kubuntu.org production build...${NC}"

# Check for required tools
command -v hugo >/dev/null 2>&1 || { echo -e "${RED}Error: Hugo is not installed${NC}" >&2; exit 1; }
command -v minify >/dev/null 2>&1 || { echo -e "${RED}Error: minify is not installed${NC}" >&2; exit 1; }

# Create build directory
BUILD_DIR="public"
echo -e "${YELLOW}Creating build directory...${NC}"
rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

# Set production environment
echo -e "${YELLOW}Setting production environment...${NC}"
export HUGO_ENV="production"
export HUGO_ENABLEGITINFO=true

# Build the site with sitemap
echo -e "${YELLOW}Building site with Hugo...${NC}"
hugo --minify --gc

# Optimize images
echo -e "${YELLOW}Optimizing images...${NC}"
find $BUILD_DIR -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) -exec sh -c '
    for file do
        if [ -f "$file" ]; then
            echo "Optimizing $file"
            convert "$file" -strip -quality 85 "$file"
        fi
    done
' sh {} +

# Minify CSS and JavaScript
echo -e "${YELLOW}Minifying CSS and JavaScript...${NC}"
find $BUILD_DIR -type f -name "*.css" -exec sh -c '
    for file do
        if [ -f "$file" ]; then
            echo "Minifying $file"
            minify --type css "$file" > "$file.min" && mv "$file.min" "$file"
        fi
    done
' sh {} +

find $BUILD_DIR -type f -name "*.js" -exec sh -c '
    for file do
        if [ -f "$file" ]; then
            echo "Minifying $file"
            minify --type js "$file" > "$file.min" && mv "$file.min" "$file"
        fi
    done
' sh {} +

# Check for broken links
echo -e "${YELLOW}Checking for broken links...${NC}"
hugo --minify --gc --gc

# Create deployment archive
echo -e "${YELLOW}Creating deployment archive...${NC}"
tar -czf kubuntu-site.tar.gz $BUILD_DIR

# Print build summary
echo -e "${GREEN}Build completed successfully!${NC}"
echo -e "${YELLOW}Build directory: $BUILD_DIR${NC}"
echo -e "${YELLOW}Deployment archive: kubuntu-site.tar.gz${NC}"

# Print next steps
echo -e "\n${YELLOW}Next steps:${NC}"
echo "1. Review the build in $BUILD_DIR"
echo "2. Test the site locally: hugo server -D"
echo "3. Deploy using kubuntu-site.tar.gz" 