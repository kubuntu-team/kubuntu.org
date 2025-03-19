#!/bin/bash

# Helper Shell Script
# Author: Rick Timmis <ricktimmis68@gmail.com>
#
# The purpose of this script is to make it as simple as possible for new kubuntu
# contributors, to get a development instance of kubuntu.org up and working
# so that they can develop new content, and maintain the site with ease

# For usage with Development IDE Configurations (i.e JetBrains or VSCode)
# the script can be called with a --stop switch

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Create Docker configuration if it doesn't exist
if [ ! -f "docker/nginx.conf" ]; then
    echo "Creating Docker configuration..."
    mkdir -p docker
    cat > docker/nginx.conf << 'EOL'
server {
    listen 80;
    server_name kubuntu.org;

    root /usr/share/nginx/html;
    index index.html;

    location / {
        alias /usr/share/nginx/html/;
        try_files $uri $uri/ /index.html;
    }
}
EOL
fi

# Create Dockerfile if it doesn't exist
if [ ! -f "docker/Dockerfile" ]; then
    echo "Creating Dockerfile..."
    cat > docker/Dockerfile << 'EOL'
FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# The hugo public directory will be mounted here
WORKDIR /usr/share/nginx/html
EOL
fi

for ARG in "$@"
do
    if [ "$ARG" = "--stop" ]; then
        echo "Stopping kubuntu.org development services..."
        # Stop Hugo server
        pkill -HUP hugo
        # Stop Docker container
        docker stop kubuntu-site 2>/dev/null
        docker rm kubuntu-site 2>/dev/null
        # Stop browser
        pkill -HUP firefox
        exit
    fi
done

# Check if the hugo static site builder is available and install it from the snap store
# if it isn't then install it
if ! command -v hugo &> /dev/null
then
    echo "Hugo is not installed. Installing via Snap..."
    sudo snap install hugo
else
    echo "Starting kubuntu.org development services..."
fi

# The Hugo Server command reloads the site upon any change, but to help avoid
# any parallel runs of collisions. We check if it is runing from a previous session
# and stop it if required.
# We loop and wait here, to enable Hugo to clean up
while pgrep hugo > /dev/null
do
    echo "Hugo is running. Sending HUP signal..."
    pkill -HUP hugo
    sleep 5
done

# Build the site
echo "Building Hugo site..."
hugo

# Stop and remove existing container if it exists
docker stop kubuntu-site 2>/dev/null
docker rm kubuntu-site 2>/dev/null

# Build the Docker image
echo "Building Docker image..."
docker build -t kubuntu-nginx -f docker/Dockerfile docker/

# Run the Docker container
echo "Starting Nginx container..."
docker run -d \
  -p 80:80 \
  -v $(pwd)/public:/usr/share/nginx/html \
  --name kubuntu-site \
  kubuntu-nginx

# Launch the site in the browser
echo "Opening site in browser..."
firefox --new-window http://kubuntu.org/ &>/dev/null &

# Start Hugo server in watch mode for development
echo "Starting Hugo server in watch mode..."
hugo server --disableFastRender &

exit 0